# JS
- [wasm-bindgen: Facilitating high-level interactions between Wasm modules and JavaScript](https://github.com/rustwasm/wasm-bindgen)
  
  [js-sys: Raw bindings to JS global APIs for projects using wasm-bindgen. This crate is handwritten and intended to work in all JS environments like browsers and Node.js.](https://github.com/rustwasm/wasm-bindgen/tree/main/crates/js-sys)
  - Returning `JsValue` / proxy objects
  
    > A `JsValue` doesn't actually live in Rust right now but actually in a table owned by the `wasm-bindgen` generated JS glue code. Eventually the ownership will transfer into wasm directly and this will likely become more efficient, but for now it may be slightly slow.

    If return `JsValue`, the type is erased.

    [getter and setter - The `wasm-bindgen` Guide](https://rustwasm.github.io/wasm-bindgen/reference/attributes/on-rust-exports/getter-and-setter.html)
  
    [Avoiding using Serde in Rust WebAssembly When Performance Matters | by Wenhe Li | Medium](https://medium.com/@wl1508/avoiding-using-serde-and-deserde-in-rust-webassembly-c1e4640970ca)

  - Creating `JsValue` directly / via JSON

    [Arbitrary Data with Serde - The `wasm-bindgen` Guide](https://rustwasm.github.io/wasm-bindgen/reference/arbitrary-data-with-serde.html)
    > `serde-wasm-bindgen` works by directly manipulating JavaScript values. This requires a lot of calls back and forth between Rust and JavaScript, which can sometimes be slow. An alternative way of doing this is to serialize values to JSON, and then parse them on the other end. Browsers' JSON implementations are usually quite fast, and so this approach can outstrip `serde-wasm-bindgen`'s performance in some cases.
    > 
    > That's not to say that using JSON is always faster, though - the JSON approach can be anywhere from 2x to 0.2x the speed of `serde-wasm-bindgen`, depending on the JS runtime and the values being passed. It also leads to larger code size than `serde-wasm-bindgen`. So, make sure to profile each for your own use cases.

    [serde-json-wasm: serde\_json for Wasm programs (small, deterministic, no floats)](https://github.com/CosmWasm/serde-json-wasm)

    [Zireael-N/wasm-json-parse](https://github.com/Zireael-N/wasm-json-parse)
    - [Is this project accurate? Is WASM json parsing actually faster than native? : r/WebAssembly](https://www.reddit.com/r/WebAssembly/comments/u0ji5d/is_this_project_accurate_is_wasm_json_parsing/)

  - [`js_name`](https://rustwasm.github.io/wasm-bindgen/reference/attributes/on-js-imports/js_name.html)

  - Types
    - [`typescript_custom_section`](https://rustwasm.github.io/wasm-bindgen/reference/attributes/on-rust-exports/typescript_custom_section.html)
      - [Tsify: A library for generating TypeScript definitions from rust code.](https://github.com/madonoharu/tsify)
        - [Returning Vec<T> where T: IntoWasmAbi - Issue #49 - madonoharu/tsify](https://github.com/madonoharu/tsify/issues/49)
      - [export\_ts\_macro](https://github.com/ivnsch/export_ts_macro) (discontinued)
    - [→TS](../JS/TS/README.md#rust)
    - [How to get more detailed type information in `.d.ts` - Issue #1197](https://github.com/rustwasm/wasm-bindgen/issues/1197)
    - [Support descriptions for JS/TS param/return comments - Issue #1847](https://github.com/rustwasm/wasm-bindgen/issues/1847)

  - [`start`](https://rustwasm.github.io/wasm-bindgen/reference/attributes/on-rust-exports/start.html)

  [web-sys: Raw bindings to Web APIs for projects using `wasm-bindgen`.](https://github.com/rustwasm/wasm-bindgen/tree/main/crates/web-sys)

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

## Benchmarks
- [JS / wasm-bindgen comparison](https://rustwasm.github.io/wasm-bindgen/benchmarks/)
  - Call a thunk: ~100M

- [Microbenchmarks for `wasm-bindgen`](https://github.com/rustwasm/wasm-bindgen/blob/main/benchmarks/README.md)

- [alexcrichton/rust-wasm-benchmark](https://github.com/alexcrichton/rust-wasm-benchmark) (outdated)

## References
- `JsValue`
  ```js
  function addHeapObject(obj) {
      if (heap_next === heap.length) heap.push(heap.length + 1);
      const idx = heap_next;
      heap_next = heap[idx];

      heap[idx] = obj;
      return idx;
  }

  constructor(bytes) {
      const ret = wasm.f(addHeapObject(bytes));
      this.__wbg_ptr = ret >>> 0;
      return this;
  }
  ```

- `&JsValue`
  ```js
  const heap = new Array(32).fill(undefined);

  heap.push(undefined, null, true, false);

  let stack_pointer = 32;

  function addBorrowedObject(obj) {
      if (stack_pointer == 1) throw new Error('out of js stack');
      heap[--stack_pointer] = obj;
      return stack_pointer;
  }

  try {
      const ret = wasm.f(addBorrowedObject(bytes));
      this.__wbg_ptr = ret >>> 0;
      return this;
  } finally {
      heap[stack_pointer++] = undefined;
  }
  ```
  [Support for Reference Types - The `wasm-bindgen` Guide](https://rustwasm.github.io/wasm-bindgen/reference/reference-types.html)

- [Support for Weak References - The `wasm-bindgen` Guide](https://rustwasm.github.io/wasm-bindgen/reference/weak-references.html)

[Allow opaque but owning pointer indirection in bindgen'd types - Issue #3405 - rustwasm/wasm-bindgen](https://github.com/rustwasm/wasm-bindgen/issues/3405)

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