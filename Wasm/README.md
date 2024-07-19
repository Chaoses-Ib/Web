# [WebAssembly](https://webassembly.org/)
[Wikipedia](https://en.wikipedia.org/wiki/WebAssembly), [MDN](https://developer.mozilla.org/en-US/docs/WebAssembly), [GitHub](https://github.com/WebAssembly)

[WebAssembly Design](https://github.com/WebAssembly/design)

[WebAssembly/spec: WebAssembly specification, reference interpreter, and test suite.](https://github.com/WebAssembly/spec)

## Limitations
- Web browsers do not allow WebAssembly code to directly access the Document Object Model. Wasm code must defer to JavaScript for this.

  > Actually not all calls have to go through JS. At least Firefox does a bit of optimization regarding that, if you pass in a builtin function that doesn't need JS for the provided types (either because it only has simple arguments or because of reference types), then Firefox can and does, at least for a bunch of them, avoid going through JS.

- For memory-intensive allocations in WebAssembly, there are "grave limitations that make many applications infeasible to be reliably deployed on mobile browsers \[..\] Currently allocating more than ~300MB of memory is not reliable on Chrome on Android without resorting to Chrome-specific workarounds, nor in Safari on iOS."
- All major browsers allow WebAssembly if Content-Security-Policy is not specified, or if "unsafe-eval" is used, but otherwise they behave differently. Chrome requires "unsafe-eval", though a worker thread can be a workaround.

## Compilers
- [Binaryen: Optimizer and compiler/toolchain library for WebAssembly](https://github.com/WebAssembly/binaryen)
- [Emscripten](https://emscripten.org/)
- [Wasmi: WebAssembly (Wasm) interpreter.](https://github.com/wasmi-labs/wasmi)
- WABT
  - [wasm2c: Convert wasm files to C source and header](https://github.com/WebAssembly/wabt/tree/main/wasm2c)
  - [wasm-decompile: Decompiles binary wasm modules into a text format that is significantly more compact and familiar (for users of C-style languages).](https://github.com/WebAssembly/wabt/blob/main/docs/decompiler.md)

## Rust
[Rust and WebAssembly organization](https://github.com/rustwasm)

[Rust and WebAssembly](https://rustwasm.github.io/book/introduction.html)

[Awesome Rust and Webassembly: Awesome Rust and WebAssembly projects, libraries, tools, and resources](https://github.com/rustwasm/awesome-rust-and-webassembly) (discontinued)

Discussions:
- 2022-09 [Rust & Wasm (Safe and fast web development) : r/rust](https://www.reddit.com/r/rust/comments/xk706q/rust_wasm_safe_and_fast_web_development/)

  > Rust is IMO by far the best language ATM to target WASM, but it's not all rainbows and sunshine.
  > 
  > A decent chunk of the projects sadly doesn't get a lot of maintenance right now, some are outright unmaintained, like we_alloc, while still being recommended everywhere.
  > 
  > Also, though that doesn't really impact your point, there's a number of languages in the list that do have a heavy runtime, for example Kotlin is primarily targeting the JVM and thus needs to support many of the same approaches - though in that case its running through LLVM -, and just like Swift it also has a garbage collector and async runtime included by default. And C# is quite famously a Java clone and probably has a heavier runtime than it (which can be seen in blazor web apps, which is their WASM usecase).
  > 
  > Yew also looses against JS Frameworks in a decent chunk of DOM manipulation benchmarks. Against the big ones it wins some, looses some, but against stuff like Svelte or Solid it looses most of them. Unless you actually crunch numbers it's not worth it. Sycamore-rs, which is closer to SolidJS in its architecture, is much more competitive, but also very much has an unstable API.

### Build
[Tragets](https://doc.rust-lang.org/rustc/platform-support.html#tier-2):
- `wasm32-unknown-unknown`

  `rustup target add wasm32-unknown-unknown`

  [Supported Rust Targets - The `wasm-bindgen` Guide](https://rustwasm.github.io/docs/wasm-bindgen/reference/rust-targets.html)
  > The `wasm-bindgen` target does not support the `wasm32-unknown-emscripten` nor the `asmjs-unknown-emscripten` targets.

- `wasm32-unknown-emscripten`

- `wasm32-wasi`

- `wasm64-unknown-unknown`

stdlib:
- [Rust `no_std` Playbook - HackMD](https://hackmd.io/@alxiong/rust-no-std)

  > A lot of those things panic or they just return unimplemented error where possible (such as `Err(io::Error::Unimplemented)`)

  [Practical guides on `no_std` and wasm support - tutorials - The Rust Programming Language Forum](https://users.rust-lang.org/t/practical-guides-on-no-std-and-wasm-support/94762)

- [wasm and `no_std` - Issue #1120 - rustwasm/wasm-pack](https://github.com/rustwasm/wasm-pack/issues/1120)

- [web-time: Drop-in replacement for `std::time` for Wasm in browsers](https://github.com/daxpedda/web-time)

Tools:
- [wasm-pack: 📦✨ your favorite rust -> wasm workflow tool!](https://github.com/rustwasm/wasm-pack)
  - [Debugging](https://rustwasm.github.io/book/reference/debugging.html): `wasm-pack build --debug`
  - `wasm-pack build`
  - `wasm-pack test --headless --firefox`
  - `wasm-pack publish`
  - The default template is shit.
  - Vite
    - [vite-plugin-wasm: Add WebAssembly ESM integration (aka. Webpack's `asyncWebAssembly`) to Vite and support `wasm-pack` generated modules.](https://github.com/Menci/vite-plugin-wasm/)
      - `npm -i file:../pkg`
      
      [Error when importing on vite - Issue #1106 - rustwasm/wasm-pack](https://github.com/rustwasm/wasm-pack/issues/1106)
    - [vite-plugin-wasm-pack: 🦀 Vite plugin for rust wasm-pack](https://github.com/nshen/vite-plugin-wasm-pack)
      - [Referencing a crate in the parent directory as `../` fails - Issue #22](https://github.com/nshen/vite-plugin-wasm-pack/issues/22)
      - [doesn't work with vite 3.1.2 - Issue #21](https://github.com/nshen/vite-plugin-wasm-pack/issues/21)
    - [vite-plugin-rsw: 🦞 wasm-pack plugin for Vite](https://github.com/rwasm/vite-plugin-rsw) (discontinued)
  
      [use vite to quickly start a wasm project - Issue #1016](https://github.com/rustwasm/wasm-pack/issues/1016)
    - [shadanan/vite-rust-wasm: Repo that demonstrates how to create a Rust wasm-pack project integrated with Vite and your choice of frontend framework.](https://github.com/shadanan/vite-rust-wasm)

- [trunk: Build, bundle & ship your Rust WASM application to the web.](https://github.com/trunk-rs/trunk)

- [wasm-run: Bundles and tooling for Rust WASM frontend application](https://github.com/IMI-eRnD-Be/wasm-run) (discontinued)
  - [xtask-wasm: Customizable subcommands to build your Wasm projects using xtask.](https://github.com/rustminded/xtask-wasm) (inactive)

Discussions:
- [Using trunk | Yew](https://yew.rs/docs/0.18.0/getting-started/project-setup/using-trunk)

  > Trunk builds your app based on the `index.html` file which serves as a config file of sorts. Unlike `wasm-pack`, this tool is actually designed to build apps. This means you don't need to add `cdylib` as a library target and you can use the `main` function as an entry point.

### Tools
- [Twiggy🌱: A code size profiler for Wasm](https://github.com/rustwasm/twiggy)

## Runtimes
- Web browsers
- Node.js
- [Wasmer: 🚀 The leading Wasm Runtime supporting WASIX, WASI and Emscripten](https://github.com/wasmerio/wasmer)
- [wasmtime: A fast and secure runtime for WebAssembly](https://github.com/bytecodealliance/wasmtime)
- [Enarx: Confidential Computing with WebAssembly](https://github.com/enarx/enarx)

## Tools
- [WABT: The WebAssembly Binary Toolkit](https://github.com/WebAssembly/wabt)