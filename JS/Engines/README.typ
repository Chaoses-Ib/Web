#import "@local/ib:0.1.0": *
#title[JavaScript Engines]
#a-badge[https://en.wikipedia.org/wiki/JavaScript_engine]

#a[JavaScript engines zoo][https://zoo.js.org/]

#a[A list of JavaScript engines, runtimes, interpreters][https://gist.github.com/guest271314/bd292fc33e1b30dede0643a283fadc6a]

= C++
- V8
  - JIT

- JavaScriptCore
  - JIT

- SpiderMonkey
  - JIT
  - Rust: #a[servo/mozjs: Servo's SpiderMonkey fork][https://github.com/servo/mozjs]

- #a[ChakraCore: An open source Javascript engine with a C API.][https://github.com/chakra-core/ChakraCore]
  - JIT

- #a[Facebook/Hermes: A JavaScript engine optimized for running React Native.][https://github.com/facebook/hermes]

- #a[QuickJS Javascript Engine][https://bellard.org/quickjs]
  #a-badge[https://github.com/bellard/quickjs]
  - #a[QuickJS-NG][https://github.com/quickjs-ng/quickjs]
    - #a[Differences with bellard/quickjs | QuickJS-NG][https://quickjs-ng.github.io/quickjs/diff]
      #footnote[#a[quickjs vs quickjs-ng - quickjs-ng/quickjs - Discussion \#258][https://github.com/quickjs-ng/quickjs/discussions/258]]
    - Rust
      - #a[`rquickjs`: High level bindings to the quickjs javascript engine][https://github.com/DelSkayn/rquickjs]
        - Used by #a[awslabs/LLRT][https://github.com/awslabs/llrt]
      - #a[quickjs_es_runtime (`quickjs_runtime`): this is a wrapper library for the javascript runtime quickjs written in rust which works with typescript, modules, promises, async, await and much more][https://github.com/HiRoFa/quickjs_es_runtime]
        #a-badge[https://crates.io/crates/quickjs_runtime]
      - #a[`quickjs-rusty`: A rusty QuickJS-NG wrapper focus on embedding-ready, no-pain type conversion and interoperability capabilities.][https://github.com/Icemic/quickjs-rusty]
  - Lightweight: 1.1 MB.
  - Relatively fast, but still only \~2.2% of V8.
  - Used by:
    - #a[Nginx][https://nginx.org/en/docs/njs/engine.html]
      #footnote[#a[Harnessing the Power and Convenience of JavaScript for Each Request with the NGINX JavaScript Module | F5][https://www.f5.com/company/blog/nginx/harnessing-power-convenience-of-javascript-for-each-request-with-nginx-javascript-module]]
      #footnote[#a[Introducing QuickJS engine as alternative JS engine. - Issue \#698 - nginx/njs][https://github.com/nginx/njs/issues/698]]
  - #a[lynx-family/PrimJS: JavaScript Engine Optimized for Lynx][https://github.com/lynx-family/primjs]

= Rust
- #a[`v8x`: Engine agnostic JavaScript][https://github.com/littledivy/v8x]
  #footnote[#a[Switch from V8 to JavaScriptCore? - Issue \#33336 - denoland/deno][https://github.com/denoland/deno/issues/33336]]
  - Engines: V8, JavaScriptCore, QuickJS-NG
  - It's not mimicking the `v8` crate, but V8's C API.

  #q[#a[Bartek Iwańczuk on X: "QuickJS is now passing 100% `rusty_v8` and `deno_core` tests so we could swap out JS engine in \@deno_land. Obv we're not gonna do that, but adding it as an option for `deno compile`d apps is now feasible. Trade runtime perf for smaller binary size. There's a ton of people who'd do" / X][https://x.com/biwanczuk/status/2075333144912252931]]

- #a[Brimstone: New JavaScript engine written in Rust][https://github.com/Hans-Halverson/brimstone]
  #footnote[#a[Brimstone: ES2025 JavaScript engine written in Rust | Hacker News][https://news.ycombinator.com/item?id=45944337]]

- #a[Boa: An embeddable Javascript engine written in Rust.][https://github.com/boa-dev/boa]
  - #a[Benchmarks][https://boajs.dev/benchmarks]

- #a[Nova: JS engine lolz][https://github.com/trynova/nova]
  #a-badge[https://www.reddit.com/r/rust/comments/1gu77fh/nova_javascript_ecmascript_and_webassembly_engine/]

- #a[Yavashark: A JS/TS Engine][https://github.com/Sharktheone/yavashark]
  - TS

- #a[Starlight: JS engine in Rust][https://github.com/Starlight-JS/starlight]
  (discontinued)

- #a[tsrun: A TypeScript interpreter written in Rust, designed for embedding in applications.][https://github.com/DmitryBochkarev/tsrun]

Compiler:
- #a[Perry: A native TypeScript compiler written in Rust. Compiles TypeScript directly to executables using SWC and LLVM.][https://github.com/PerryTS/perry]
- #a[jsxx: a transpiler that compiles JavaScript to C++][https://github.com/surma/jsxx]

#footnote[#a[Seeking an Embedded Scripting Solution for Rust : r/rust][https://www.reddit.com/r/rust/comments/19by2db/seeking_an_embedded_scripting_solution_for_rust/]]
