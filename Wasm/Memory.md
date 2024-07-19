# Memory Management
- `alloc` (`std`)
  - Less than 8k with LTO after stripping debuginfo: `-Clto -Cstrip=debuginfo`

- [wee\_alloc: The Wasm-Enabled, Elfin Allocator](https://github.com/rustwasm/wee_alloc) (buggy and discontinued)
  - Less than 1k