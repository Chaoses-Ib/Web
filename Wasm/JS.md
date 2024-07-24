# JS
- [wasm-bindgen: Facilitating high-level interactions between Wasm modules and JavaScript](https://github.com/rustwasm/wasm-bindgen)
  - [js-sys: Raw bindings to JS global APIs for projects using wasm-bindgen. This crate is handwritten and intended to work in all JS environments like browsers and Node.js.](https://github.com/rustwasm/wasm-bindgen/tree/main/crates/js-sys)
  - [web-sys: Raw bindings to Web APIs for projects using `wasm-bindgen`.](https://github.com/rustwasm/wasm-bindgen/tree/main/crates/web-sys)

  [The `wasm-bindgen` Guide](https://rustwasm.github.io/wasm-bindgen/introduction.html)

- [stdweb: A standard library for the client-side Web](https://github.com/koute/stdweb) (discontinued)

Discussions:
- 2018-08 [Clarify the relationship to bindgen and stdweb - Issue #226 - rustwasm/team](https://github.com/rustwasm/team/issues/226)
- 2020-09 [Freeze support of stdweb at v0.18 - Issue #1569 - yewstack/yew](https://github.com/yewstack/yew/issues/1569)

  > The biggest problem with supporting `stdweb` going forward is it's lack of recent development. The repository hasn't been active in about a year despite various features being missing.
  > 
  > Despite the lack of development, `stdweb` is a really great tool and provides a higher level of abstraction, nicer APIs, and a convenient `js!` macro over the `web-sys` library. Furthermore, the sister tool, `cargo-web` doesn't support `web-sys`, only `stdweb`.
  > 
  > Many of the above advantages have been solved in the new `web-sys` oriented ecosystem. `wasm-bindgen` alleviates the need for a `js!` macro, `trunk` replaces `cargo-web`, and libraries like `gloo` provide nice APIs.

## Web
- [web-sys: Raw bindings to Web APIs for projects using `wasm-bindgen`.](https://github.com/rustwasm/wasm-bindgen/tree/main/crates/web-sys) ([Docs](https://rustwasm.github.io/wasm-bindgen/api/web_sys/))

- [gloo: A modular toolkit for building fast, reliable Web applications and libraries with Rust and WASM](https://github.com/rustwasm/gloo)

- [wasm-streams: Bridging between web streams and Rust streams using WebAssembly](https://github.com/MattiasBuelens/wasm-streams)

## NPM
Naming convention:
- **`{}-wasm`**
- `wasm-{}`

[wasm - npm search](https://www.npmjs.com/search?q=wasm)

## Frameworks
- [Yew: Rust / Wasm framework for creating reliable and efficient web applications](https://github.com/yewstack/yew)

C++:
- [asm-dom: A minimal WebAssembly virtual DOM to build C++ SPA (Single page applications)](https://github.com/mbasso/asm-dom)