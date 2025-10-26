# WebView
[Wikipedia](https://en.wikipedia.org/wiki/WebView)

[WebView: Usage Scenarios and Challenges](https://webview-cg.github.io/usage-and-challenges/)

Features:
- Data isolation
- Process management
- Window management
  - Script dialogs
- Navigation
- HTML
- Interop
  - Why not just use HTTP?
    - Random port storage problem
    - Unauthenticated access
    - External websites
- Network
  - User agent
- Notification
- Web extensions

[You're Probably Using WebViews Wrong: Common Security Pitfalls for Mobile Developers | Zellic --- Research](https://www.zellic.io/blog/webview-security/)

## Implementations
- [Microsoft Edge WebView2](WebView2.md)

[Webview Versions | Tauri](https://tauri.app/reference/webview-versions/) ([Tauri v1](https://v1.tauri.app/v1/references/webview-versions/))

## Rust
- [Wry: Cross-platform WebView library in Rust for Tauri.](https://github.com/tauri-apps/wry) ([Docs.rs](https://docs.rs/wry/))
  - [`WebViewAttributes`](https://docs.rs/wry/latest/wry/struct.WebViewAttributes.html)
  - [`WebContext`](https://docs.rs/wry/latest/wry/struct.WebContext.html)
  - Navigation
    - [`new_window_req_handler`](https://docs.rs/wry/latest/wry/struct.WebViewAttributes.html#structfield.new_window_req_handler)
  - HTML
  - Interop
    - [`initialization_scripts`](https://docs.rs/wry/latest/wry/struct.WebViewAttributes.html#structfield.initialization_scripts)
    - [`custom_protocols`](https://docs.rs/wry/latest/wry/struct.WebViewAttributes.html#structfield.custom_protocols) (HTTP)
    - [`ipc_handler`](https://docs.rs/wry/latest/wry/struct.WebViewAttributes.html#structfield.ipc_handler) (`window.ipc.postMessage(string)`)
  - Network
    - [`download_started_handler`](https://docs.rs/wry/latest/wry/struct.WebViewAttributes.html#structfield.download_started_handler)
    - [`proxy_config`](https://docs.rs/wry/latest/wry/struct.WebViewAttributes.html#structfield.proxy_config)
  - Transparent
  - [→Tauri](https://github.com/Chaoses-Ib/Rust/blob/main/Libraries/GUI/Tauri/README.md)
    - TAO, Wry
    - tauri-build, tauri-codegen, tauri-runtime-wry
    - tauri-runtime, tauri-macros, tauri-utils
  - [Electrico: A Lightweight Electron App Container](https://github.com/thomastschurtschenthaler/electrico)

    [Show HN: Electrico -- Electron Without Node and Chrome | Hacker News](https://news.ycombinator.com/item?id=41539033)

  > dioxus: 猜猜为什么我只用tao wry，tauri2出来后安卓宁愿拖更两个版本支持也不愿意用它

- Winio: [winio/winio/src/widgets/webview.rs](https://github.com/compio-rs/winio/blob/master/winio/src/widgets/webview.rs)
  - Navigation
  - HTML
  - [feat: WebView by Berrysoft - Pull Request #65](https://github.com/compio-rs/winio/pull/65)
  - [Run-time WebView2 support detection - Issue #80](https://github.com/compio-rs/winio/issues/80)
    - [feat(win): show label if WebView2 failed to initialize by Berrysoft - Pull Request #81](https://github.com/compio-rs/winio/pull/81)
  - Examples
    - [winio/winio/examples/subviews/webview.rs](https://github.com/compio-rs/winio/blob/master/winio/examples/subviews/webview.rs)
    - [winio/winio/examples/subviews/markdown.rs](https://github.com/compio-rs/winio/blob/master/winio/examples/subviews/markdown.rs)
      - Axum

- Servo
  - [servo/ports/servoshell/minibrowser.rs](https://github.com/Nylme/servo/blob/11e6c23e72fc5085e84ad38a4ce7383eba70a01b/ports/servoshell/minibrowser.rs#L63)
    - egui

- CEF
  - [wew: Cross-platform WebView rendering library for rust.](https://github.com/mycrl/wew)

    > 我宣传下我的webview，还在开发中，其实有两年了，以前一直是个破架子，也没维护，最近因为工作原因重新捡起来，准备一次性做完善

- [uriegel/webview-app](https://github.com/uriegel/webview-app)

[Looking for a UI library that allows me to display a webview in a panel : r/rust](https://www.reddit.com/r/rust/comments/1dpf1eg/looking_for_a_ui_library_that_allows_me_to/)

[How to embed a web Browser in a GUI application : r/rust](https://www.reddit.com/r/rust/comments/1028rlh/how_to_embed_a_web_browser_in_a_gui_application/)

## C++
- [webview/webview: Tiny cross-platform webview library for C/C++. Uses WebKit (GTK/Cocoa) and Edge WebView2 (Windows).](https://github.com/webview/webview) (discontinued)
  - Rust: [Boscop/web-view: Rust bindings for webview, a tiny cross-platform library to render web-based GUIs for desktop applications](https://github.com/Boscop/web-view)

- [FLTK: Fast Light Tool Kit - cross platform GUI development](https://github.com/fltk/fltk)
  - Rust: [fltk-rs/fltk-webview: webview functionality for embedded fltk windows](https://github.com/fltk-rs/fltk-webview)
