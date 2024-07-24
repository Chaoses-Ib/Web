# Console
[MDN](https://developer.mozilla.org/en-US/docs/Web/API/console), [Console Standard](https://console.spec.whatwg.org/)

## Logging
[MDN](https://developer.mozilla.org/en-US/docs/Web/API/console#outputting_text_to_the_console)

- `debug()` (hide by default)
- `log()`
- `info()`
- `warn()`
- `error()`

[Difference between console.log() and console.debug()? - Stack Overflow](https://stackoverflow.com/questions/21876461/difference-between-console-log-and-console-debug)

`trace()` is not for logging.

[Console Log Levels](https://inspirnathan.com/posts/114-console-log-levels)

Clearing: `clear()`

### Wasm
- web-sys
  - [gloo-console](https://docs.rs/gloo-console/latest/gloo_console/)
    - Format patterns and `Debug` trait are not supported.

      Workaround: `log!(format!())`
    - Depends on serde.

- Panics
  - [console\_error\_panic\_hook: A panic hook for `wasm32-unknown-unknown` that logs panics with `console.error`](https://github.com/rustwasm/console_error_panic_hook)

- log
  - [console\_log: A rust logger that routes messages to the browser's console.](https://github.com/iamcodemaker/console_log)
  - [wasm-log](https://github.com/s1gtrap/wasm-log)
  - [wasm-logger: A logger that sends a message with its Rust source's line and filename to the browser console.](https://gitlab.com/limira-rs/wasm-logger) (discontinued)

- tracing
  - [tracing-wasm: `tracing` crate compatible `Subscriber` for reporting spans through browser `window.performance`](https://github.com/old-storyai/tracing-wasm)

[console\_log! macro - Issue #2104 - rustwasm/wasm-bindgen](https://github.com/rustwasm/wasm-bindgen/issues/2104)

[WASM: Pointing the log to the browser console? : r/rust](https://www.reddit.com/r/rust/comments/xbr6m7/wasm_pointing_the_log_to_the_browser_console/)