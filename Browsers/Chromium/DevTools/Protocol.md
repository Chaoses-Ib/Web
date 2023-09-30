# [Chrome DevTools Protocol](https://chromedevtools.github.io/devtools-protocol/)
[Awesome Chrome DevTools](https://github.com/ChromeDevTools/awesome-chrome-devtools#chrome-devtools-protocol)

## Servers
- [Chrome DevTools Protocol](https://chromedevtools.github.io/devtools-protocol/)
- [Microsoft Edge DevTools Protocol](https://learn.microsoft.com/en-us/microsoft-edge/devtools-protocol-chromium/)

How does Chromium start the CDP server:
```cpp
int ChromeBrowserMainParts::PreMainMessageLoopRunImpl() {
  g_browser_process->CreateDevToolsProtocolHandler();
}

void BrowserProcessImpl::CreateDevToolsProtocolHandler() {
  DCHECK_CALLED_ON_VALID_SEQUENCE(sequence_checker_);
#if !BUILDFLAG(IS_ANDROID)
  // StartupBrowserCreator::LaunchBrowser can be run multiple times when browser
  // is started with several profiles or existing browser process is reused.
  if (!remote_debugging_server_) {
    if (!local_state_->GetBoolean(prefs::kDevToolsRemoteDebuggingAllowed)) {
      // Follow content/browser/devtools/devtools_http_handler.cc that reports
      // its remote debugging port on stderr for symmetry.
      fputs("\nDevTools remote debugging is disallowed by the system admin.\n",
            stderr);
      fflush(stderr);
      return;
    }
    remote_debugging_server_ = std::make_unique<RemoteDebuggingServer>();
  }
#endif
}

RemoteDebuggingServer::RemoteDebuggingServer() {
  const base::CommandLine& command_line =
      *base::CommandLine::ForCurrentProcess();
  if (command_line.HasSwitch(switches::kRemoteDebuggingPipe)) {
    content::DevToolsAgentHost::StartRemoteDebuggingPipeHandler(
        base::BindOnce(&ChromeDevToolsManagerDelegate::CloseBrowserSoon));
  }

  std::string port_str =
      command_line.GetSwitchValueASCII(::switches::kRemoteDebuggingPort);
  int port;
  if (!base::StringToInt(port_str, &port) || port < 0 || port >= 65535)
    return;

  base::FilePath output_dir;
  if (!port) {
    bool result = base::PathService::Get(chrome::DIR_USER_DATA, &output_dir);
    DCHECK(result);
  }

  base::FilePath debug_frontend_dir;
  if (command_line.HasSwitch(::switches::kCustomDevtoolsFrontend)) {
    GURL custom_devtools_frontend_url(command_line.GetSwitchValueASCII(
        ::switches::kCustomDevtoolsFrontend));
    if (custom_devtools_frontend_url.SchemeIsFile()) {
      net::FileURLToFilePath(custom_devtools_frontend_url, &debug_frontend_dir);
    }
  }
  content::DevToolsAgentHost::StartRemoteDebuggingServer(
      std::make_unique<TCPServerSocketFactory>(port), output_dir,
      debug_frontend_dir);
}

void DevToolsAgentHost::StartRemoteDebuggingServer(
    std::unique_ptr<DevToolsSocketFactory> server_socket_factory,
    const base::FilePath& active_port_output_directory,
    const base::FilePath& debug_frontend_dir) {
  DevToolsManagerDelegate* delegate =
      DevToolsManager::GetInstance()->delegate();
  if (!delegate) {
    return;
  }
  SetDevToolsHttpHandler(std::make_unique<DevToolsHttpHandler>(
      delegate, std::move(server_socket_factory), active_port_output_directory,
      debug_frontend_dir))
  {
    static base::NoDestructor<std::unique_ptr<DevToolsHttpHandler>> instance;
    *instance = std::move(handler);
  }
}

DevToolsHttpHandler::DevToolsHttpHandler(
  std::unique_ptr<DevToolsSocketFactory> socket_factory,
  const base::FilePath& output_directory
) {
  StartServerOnHandlerThread(socket_factory, output_directory) {
    if (ip_address) {
      std::string message = base::StringPrintf(
          "\nDevTools listening on ws://%s%s\n", ip_address->ToString().c_str(),
          browser_guid.c_str());
      fprintf(stderr, "%s", message.c_str());
      fflush(stderr);
      
      if (!output_directory.empty()) {
        base::FilePath path =
            output_directory.Append(kDevToolsActivePortFileName);
        std::string port_target_string = base::StringPrintf(
            "%d\n%s", ip_address->port(), browser_guid.c_str());
        if (!base::WriteFile(path, port_target_string)) {
          PLOG(ERROR) << "Error writing DevTools active port to file " << path;
        }
      }
    }
  }
}
```

If one can locate `g_browser_process`, he would be able to start the CDP server by injecting code.

Node.js has a backdoor that can start CDP server at runtime by `process._debugProcess(pid)`:
- [node/src/node\_process\_methods.cc](https://github.com/nodejs/node/blob/51f4ff245018153abbb918b0d4a3cce65510d762/src/node_process_methods.cc#L347-L444)
- [注入任意代码到运行中的 Electron 应用 - 非尝咸鱼贩](https://mp.weixin.qq.com/s/faYOXbn_4fNotEa8gs0CVw)

## Clients
- [Selenium](https://github.com/SeleniumHQ/selenium)

JS:
- [chrome-remote-interface: Chrome Debugging Protocol interface for Node.js](https://github.com/cyrus-and/chrome-remote-interface/)
- [puppeteer](https://github.com/puppeteer/puppeteer)
- [Playwright](https://github.com/microsoft/playwright)
- [Cypress](https://github.com/cypress-io/cypress)

.NET:
- [Puppeteer Sharp](https://github.com/hardkoded/puppeteer-sharp)
- [Playwright for .NET](https://github.com/microsoft/playwright-dotnet)
- [chrome-dev-tools-generator](https://github.com/BaristaLabs/chrome-dev-tools-generator)
- [ChromeDevTools](https://github.com/MasterDevs/ChromeDevTools) (discontinued)

Go:
- [chromedp: A faster, simpler way to drive browsers supporting the Chrome DevTools Protocol.](https://github.com/chromedp/chromedp)

Tools:
- Chromium
- [chrome-devtools-app: Chrome DevTools packaged as an app via Electron](https://github.com/auchenberg/chrome-devtools-app) (discontinued)
  - [Inspect: The mobile DevTools you'll love using](https://inspect.dev/)