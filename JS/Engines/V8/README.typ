#import "@local/ib:0.1.0": *
#title[#a[V8][https://v8.dev]]
#a-badge[https://en.wikipedia.org/wiki/V8_(JavaScript_engine)]

#a[Ignition Design Doc - Google Docs][https://docs.google.com/document/d/11T2CRex9hXxoJwbYqVQ32yIPMh0uouUZLdyrtmMoL44/view]

#a[Why Google's V8 Isn't Yet Suitable for Server Embedding][https://sysoev-ru.translate.goog/prog/v8.html?_x_tr_sch=http&_x_tr_sl=ru&_x_tr_tl=en&_x_tr_hl=en]
#a-badge[https://news.ycombinator.com/item?id=2519674]
#a-badge[https://www.reddit.com/r/programming/comments/h56jh/the_author_of_nginx_on_nodejs_and_why_v8_is_not/]

= Binary size
#a[Bloat for Windows Demo - V8 binary size][https://rongjiecomputer.github.io/bloat-win/v8]

- `rusty_v8` v150: 40.3 MiB
  #footnote[#a[Shrink library size - Issue \#506 - denoland/rusty_v8][https://github.com/denoland/rusty_v8/issues/506]]

- ICU: 11 MB
  #footnote[#a[build: keep ICU data out of the V8 static library by bartlomieju - Pull Request \#1999 - denoland/rusty_v8][https://github.com/denoland/rusty_v8/pull/1999]]

= Rust
- #a[denoland/`rusty_v8`: Rust bindings for the V8 JavaScript engine][https://github.com/denoland/rusty_v8]
  - #a[`deno_core`][https://crates.io/crates/deno_core]

  #a[Announcing Stable V8 Bindings for Rust | Deno][https://deno.com/blog/rusty-v8-stabilized]
  #a-badge[https://lobste.rs/s/ad1nv4/announcing_stable_v8_bindings_for_rust]

- #a[rustyscript: Effortless JS integration for rust][https://github.com/rscarson/rustyscript]
  #footnote[#a[Rustyscript 0.10.0 released: Effortless JS integration for Rust - now with NodeJS support : r/rust][https://www.reddit.com/r/rust/comments/1gywvrx/rustyscript_0100_released_effortless_js/]]

- #a[jstime: another runtime][https://github.com/jstime/jstime]

- #a[Ion.js: A Positively Charged JavaScript Runtime][https://github.com/alshdavid-public/ion]

  #q[
  - 兼顾兼容性优先支持 Web 标准 API，逐步完善 setTimeout、console 等基础功能，Node.js 兼容性计划中
  - 解决 Node.js 嵌入复杂、Deno 用户态 API 难用、Bun 无法嵌入的痛点，提供静态编译、C FFI（计划中）等便利特性  
  ]

= Injection
- [v8\_killer: A tool that can inject any js into the V8 VM](https://github.com/ShellWen/v8_killer)
  - [做了个 V8 虚拟机注入器， V8 Killer - V2EX](https://www.v2ex.com/t/978250)
  - [V8 Killer，让 Electron 程序注入不再困难 - V2EX](https://www.v2ex.com/t/996208)

CEF:
- [EasyCEFInject: A library to inject a piece of javascript to any application that is built with Chromium Embedded Framework.](https://github.com/MicroCBer/EasyCEFInject)