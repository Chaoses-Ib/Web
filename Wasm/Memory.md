# Memory Management
- `alloc` (`std`)
  - Less than 8k with LTO after stripping debuginfo: `-Clto -Cstrip=debuginfo`

- [wee\_alloc: The Wasm-Enabled, Elfin Allocator](https://github.com/rustwasm/wee_alloc) (buggy and discontinued)
  - Less than 1k

## Limit
[Up to 4GB of memory in WebAssembly - V8](https://v8.dev/blog/4gb-wasm-memory)

Does mobile browers have addtional limits?

[browser - Memory limits in webassembly - Stack Overflow](https://stackoverflow.com/questions/40417774/memory-limits-in-webassembly)
> WebAssembly is currently specified as an ILP32 process: pointers are 32 bits. You're therefore hard-limited to 4GiB. We may add wasm64 in the future.

[\[WASM/NodeJS\] Allocating a Vec<T> with large capacity causes RuntimeErrors - help - Rust](https://users.rust-lang.org/t/wasm-nodejs-allocating-a-vec-t-with-large-capacity-causes-runtimeerrors/57009)