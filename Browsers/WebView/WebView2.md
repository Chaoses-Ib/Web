# Microsoft Edge WebView2
[Announcing Microsoft Edge WebView2 General Availability - Microsoft Edge Blog](https://blogs.windows.com/msedgedev/2020/10/19/edge-webview2-general-availability/)

[Introduction to Microsoft Edge WebView2 - Microsoft Edge Developer documentation | Microsoft Learn](https://learn.microsoft.com/en-us/microsoft-edge/webview2/)

[Overview of WebView2 APIs - Microsoft Edge Developer documentation | Microsoft Learn](https://learn.microsoft.com/en-us/microsoft-edge/webview2/concepts/overview-features-apis)

[Get started with WebView2 in Win32 apps - Microsoft Edge Developer documentation | Microsoft Learn](https://learn.microsoft.com/en-us/microsoft-edge/webview2/get-started/win32)

[Linux support - Issue #645 - MicrosoftEdge/WebView2Feedback](https://github.com/MicrosoftEdge/WebView2Feedback/issues/645#issuecomment-1063243638)

[讨论几年后微软突然决定适用于Linux和macOS的WebView2组件不再开源 -- 蓝点网](https://www.landiannews.com/archives/104891.html)

## Distribution
- Installation
  - Built-in: Windows 11, Windows 10 22H2+
  - https://aka.ms/webview2installer
  - Non-portable

  [Distribute your app and the WebView2 Runtime - Microsoft Edge Developer documentation | Microsoft Learn](https://learn.microsoft.com/en-us/microsoft-edge/webview2/concepts/distribution)

  [Delivering the Microsoft Edge WebView2 Runtime to Windows 10 Consumers - Microsoft Edge Blog](https://blogs.windows.com/msedgedev/2022/06/27/delivering-the-microsoft-edge-webview2-runtime-to-windows-10-consumers/)
  - [减少开发者工作量，微软向Windows 10推送WebView2 - OSC开源社区](https://mp.weixin.qq.com/s/1j0QYvJo6etCRQUwvtNO0w)
  - [Delivering Microsoft Edge WebView2 Runtime to managed Windows 10 devices - Microsoft Edge Blog](https://blogs.windows.com/msedgedev/2022/12/14/delivering-microsoft-edge-webview2-runtime-to-managed-windows-10-devices/)

  [Windows computers without built-in Webview2 fail to download and the program cannot be started - Issue #12929 - tauri-apps/tauri](https://github.com/tauri-apps/tauri/issues/12929)
  - [得物:从 Electron 迁移到 Tauri 安装包减 91%内存占用下降 50%CPU 占用下降 63%支持 win7 - V2EX](https://www.v2ex.com/t/1094563)

    > 因为 Tauri 在 Windows 系统上比较依托于 Webview2 作为渲染的容器，虽然 Tauri 提供了检测本地电脑是否有安装 Webview2 以及提供联网下载的能力，但是因为 Windows 电脑千奇百怪，经常会出现未内置 Webview2 的 Windows 电脑下载不成功而导致程序无法启动的情况：对于这种情况，我们虽然可以将 Webview2 内置到安装包里面，在用户安装的时候进行内置解压安装，但是这样包体积就跟 Electron 相差不大。

  [Integrate Webview2 for windows - Issue #736 - libnyanpasu/clash-nyanpasu](https://github.com/libnyanpasu/clash-nyanpasu/issues/736)

  [支持 windows 7、8、8.1 的最后一个版本的 Edge Webview2 runtime 运行库 v109 独立离线安装包 - 飘在云端](https://www.0z.gs/memo/2351.html)

  [无法初始化WebView2组件，最低需要Edge87版本 - Quicker](https://getquicker.net/QA/Question/27525)

  [pascalscript - Detecting if WebView2 Runtime is installed with Inno Setup - Stack Overflow](https://stackoverflow.com/questions/72331206/detecting-if-webview2-runtime-is-installed-with-inno-setup)

  [有没有Edge WebView2 RunTime的卸载工具？ - 问题求助 - 小众软件官方论坛](https://meta.appinn.net/t/topic/54625)

  [不该删掉edge的 - 搞七捻三 - LINUX DO](https://linux.do/t/topic/835914)

- [Fixed Version distribution mode](https://learn.microsoft.com/en-us/microsoft-edge/webview2/concepts/distribution?tabs=dotnetcsharp#the-fixed-version-runtime-distribution-mode)

- The `WebView2Loader` only depends on `KERNEL32.dll`.
- `CreateCoreWebView2Environment`

  [WebView2 CreateCoreWebView2EnvironmentWithOptions fails with `ERROR_NOT_SUPPORTED` - Issue #860 - MicrosoftEdge/WebView2Feedback](https://github.com/MicrosoftEdge/WebView2Feedback/issues/860)
- `C:\Program Files (x86)\Microsoft\EdgeWebView\Application\141.0.3537.99\EBWebView\x64\EmbeddedBrowserWebView.dll`

## Bindings
### C++
- [MicrosoftEdge/WebView2Samples: Microsoft Edge WebView2 samples](https://github.com/MicrosoftEdge/WebView2Samples)
- [MicrosoftEdge/WebView2Browser: A web browser built with the Microsoft Edge WebView2 control.](https://github.com/MicrosoftEdge/WebView2Browser)

### Rust
- [wravery/webview2-rs: Rust bindings for the WebView2 COM APIs](https://github.com/wravery/webview2-rs)
  - Wry

- [compio-rs/webview2-rs: WebView2 Win32 loader Rust bindings](https://github.com/compio-rs/webview2-rs)
  - Link to the static library (`WebView2LoaderStatic.lib`) if using an MSVC toolchain, or to the DLL (`WebView2Loader.dll`) if using a GNU toolchain.
  - Winio

- [blckngm/webview2: Rust bindings for WebView2](https://github.com/blckngm/webview2) (discontinued)
  - [stuartZhang/nwg-webview-ctrl: 封装Microsoft Edge WebView2浏览器内核为Native Windows GUI (i.e. NWG crate)开发框架的WebView图形控件](https://github.com/stuartZhang/nwg-webview-ctrl)

### VB
- `VBRichclient`

  [网管小贾 - 抛弃IE，瞧VB6也能玩得转WebView2](https://www.sysadm.cc/index.php/vbbiancheng/1079-abandoning-ie-you-can-also-use-webview2-in-vb6?i=1)
