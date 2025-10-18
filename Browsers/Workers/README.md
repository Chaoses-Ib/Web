# Web Workers
[Wikipedia](https://en.wikipedia.org/wiki/Web_worker), [MDN](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Using_web_workers)

> A web worker is a JavaScript script executed from an HTML page that runs in the background, independently of scripts that may also have been executed from the same HTML page. Web workers are often able to utilize multi-core CPUs more effectively.

## Wasm
[WebAssembly - Threading | 曜彤.手记](https://www.hangyu.site/2023/11/09/WebAssembly-Threading/)

Rust:
- [web-sys: Wasm in Web Worker - The `wasm-bindgen` Guide](https://wasm-bindgen.github.io/wasm-bindgen/examples/wasm-in-web-worker.html)
  - [gloo-worker](https://docs.rs/gloo-worker/latest/gloo_worker/)
    
    [gloo/examples/file-hash](https://github.com/rustwasm/gloo/blob/master/examples/file-hash/README.md)
- [wasm_thread: A rust `std::thread` replacement for wasm32 target](https://github.com/chemicstry/wasm_thread)

  [Multithreading Rust and Wasm | Rust and WebAssembly](https://rustwasm.github.io/2018/10/24/multithreading-rust-and-wasm.html)

- `wasm32-unknown-emscripten`

  > 这个target可以原生支持thread  
  > 不过试之前做好emscripten生态很差的准备就是了
- [wasm-bindgen-rayon: An adapter for enabling Rayon-based concurrency on the Web with WebAssembly.](https://github.com/RReverser/wasm-bindgen-rayon)

  > There is a Rust crate for building [rayon thread pool](https://docs.rs/rayon/latest/rayon/struct.ThreadPool.html) with web workers: https://github.com/RReverser/wasm-bindgen-rayon

  > 这个方案让 wasm 内存在每个 web workers 上共享，然后用 crossbeam-channel + wasm 的锁搞通信
  > 
  > 他的核心优势是：
  > 1. rust 的主线程能跑在 js 的主线程上
  > 2. rust 不用改
  > 3. 避免任何消息同步方案的痛苦（postmessage 和手写锁都很烦人）
  > 4. 可以是同步的

- [wasm-mt: A multithreading library for Rust and WebAssembly](https://github.com/w3reality/wasm-mt)
  - `postMessage()`
- [wasmworker: Dispatching tasks to a WebWorker without `SharedArrayBuffers`.](https://github.com/paberr/wasmworker)

  > The use of `SharedArrayBuffers` requires cross-origin policy headers to be set, which is not possible in every environment. Moreover, most libraries that rely on `SharedArrayBuffers`, also require a nightly version of Rust at the moment. An important goal of this library is to remove these requirements.
- [amethyst/web\_worker](https://github.com/amethyst/web_worker) (discontinued)

JS:
- [wasm-worker: Move a WebAssembly module into its own thread](https://github.com/mbasso/wasm-worker)