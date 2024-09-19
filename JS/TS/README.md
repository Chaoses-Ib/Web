# [TypeScript](https://www.typescriptlang.org/)
[Wikipedia](https://en.wikipedia.org/wiki/TypeScript), [GitHub](https://github.com/microsoft/TypeScript)

**TypeScript** is JavaScript with syntax for types. It is a strict syntactical superset of JavaScript and adds optional static typing to the language.

[TypeScript Deep Dive](https://basarat.gitbook.io/typescript)

[Migrating from JavaScript](https://www.typescriptlang.org/docs/handbook/migrating-from-javascript.html)

[Type Declarations](https://www.typescriptlang.org/docs/handbook/2/type-declarations.html)

## Naming conventions
[Typescript file naming conventions? : r/typescript](https://www.reddit.com/r/typescript/comments/98siz7/typescript_file_naming_conventions/)

## Files
> TypeScript has two main kinds of files. `.ts` files are *implementation* files that contain types and executable code. These are the files that produce `.js` outputs, and are where you'd normally write your code.
> 
> `.d.ts` files are *declaration* files that contain *only* type information. These files don't produce `.js` outputs; they are only used for typechecking. We'll learn more about how to write our own declaration files later.

[About "\*.d.ts" in TypeScript - Stack Overflow](https://stackoverflow.com/questions/21247278/about-d-ts-in-typescript)

[TypeScript: Documentation - Modules .d.ts](https://www.typescriptlang.org/docs/handbook/declaration-files/templates/module-d-ts.html)

[typescript - When to use types.ts vs types.d.ts - Stack Overflow](https://stackoverflow.com/questions/68747657/when-to-use-types-ts-vs-types-d-ts)

[Create d.ts for API response : r/typescript](https://www.reddit.com/r/typescript/comments/t0i6ky/create_dts_for_api_response/)
> Are you proving types for their package, or types for their API? If it's the latter you shouldn't make '.d.ts' files. Just make regular `.ts` files and build them.

[typescript - Import class in definition file (\*d.ts) - Stack Overflow](https://stackoverflow.com/questions/39040108/import-class-in-definition-file-d-ts)

## Arrays
> To specify the type of an array like `[1, 2, 3]`, you can use the syntax `number[]`; this syntax works for any type (e.g. `string[]` is an array of strings, and so on). You may also see this written as `Array<number>`, which means the same thing.

[Array type syntax preference : r/typescript](https://www.reddit.com/r/typescript/comments/v8dw3v/array_type_syntax_preference/)

> Note that `[number]` is a different thing; refer to the section on [Tuples](https://www.typescriptlang.org/docs/handbook/2/objects.html#tuple-types).

## Type aliases and interfaces
- Differences between type aliases and interfaces (`interface` vs `type`)

  > Type aliases and interfaces are very similar, and in many cases you can choose between them freely. Almost all features of an `interface` are available in `type`, the key distinction is that a type cannot be re-opened to add new properties vs an interface which is always extendable.

  > If you would like a heuristic, use `interface` until you need to use features from `type`.

  为什么要添加两个功能大幅重合的特性？

  [Differences Between Type Aliases and Interfaces](https://www.typescriptlang.org/docs/handbook/2/everyday-types.html#differences-between-type-aliases-and-interfaces)

  [Playground Example - Types vs Interfaces](https://www.typescriptlang.org/play/?#example/types-vs-interfaces)
  > Depending on your goals, this difference could be a positive or a negative. However for publicly exposed types, it's a better call to make them an interface.

  [Interfaces vs Types in TypeScript - Stack Overflow](https://stackoverflow.com/questions/37233735/interfaces-vs-types-in-typescript/52682220#52682220)

## Enums
[TypeScript: Handbook - Enums](https://www.typescriptlang.org/docs/handbook/enums.html)

Enums are real objects that exist at runtime.

In most cases, enums are a perfectly valid solution. However sometimes requirements are tighter. To avoid paying the cost of extra generated code and additional indirection when accessing enum values, it's possible to use `const` enums:
```ts
const enum Enum {
  A = 1,
  B = A * 2,
}
```
Const enums can only use constant enum expressions and unlike regular enums they are completely removed during compilation. Const enum members are inlined at use sites. This is possible since const enums cannot have computed members.

[### Preserve Const Enums - `preserveConstEnums`](https://www.typescriptlang.org/tsconfig/#preserveConstEnums)

## FFI
### Rust
- [ts-rs: Generate TypeScript bindings from Rust types](https://github.com/Aleph-Alpha/ts-rs)
  - Small dependencies without `format`

  Generation:
  - > I think we need a way to configure the macro not only through attributes, but also through a config file which applies to all invocations. Otherwise, users code will drown in attributes to configure the output for every invocation. This is currently really tricky because of incremental compilation, but I'll take a look at it.
  - `.ts`
  - Only top-level structs need `#[ts(export)]`
  - Cannot export multiple structs to the same file with `export_to`

    [Combine exports into single file - Issue #59](https://github.com/Aleph-Alpha/ts-rs/issues/59)
    - [New release? - Issue #356](https://github.com/Aleph-Alpha/ts-rs/issues/356)
  - Default format is bad for read
    - `/* */` for all comments
  - Deleted structs will not be automatically removed
  
  Types:
  - `i64` → `bigint`
    - `#[ts(type = "number")]`
    - [large integer types should also be typed as numbers - Issue #94](https://github.com/Aleph-Alpha/ts-rs/issues/94)
  - `type`
  - `Option` with `#[serde(skip_serializing_if = "Option::is_none")]` will still be exported as `T | null` instead of `T?`

    Add `#[ts(optional)]`
  - `Array<>`
  - [Is it possible to generate numeric enums? - Issue #140](https://github.com/Aleph-Alpha/ts-rs/issues/140)
  - [Is there a way to export external types? - Issue #82](https://github.com/Aleph-Alpha/ts-rs/issues/82)

- [specta: Easily export your Rust types to other languages](https://github.com/specta-rs/specta)
  - [Support `serde_repr` - Issue #68 - specta-rs/specta](https://github.com/specta-rs/specta/issues/68)

- [tsync: Synchronize rust and typescript types!](https://github.com/Wulf/tsync) (inactive)
  - `.d.ts` by default
  - Dependent structs will not be automatically exported
  - `cargo add tsync` will introduce many dependencies not actually used
  - `/* */` for all comments

  Types:
  - `i64` → `number`
  - `interface`
  - `Array<>`
  - `Option<T>` → `T?`
  - `serde_repr`: ambient enums
    - `--const-enums`: ambient const enums
    - [`#[derive(serde_repr::Serialize_repr)]` does not work - Issue #56](https://github.com/Wulf/tsync/issues/56)
  - [\[feature request\] Honour `#[serde(rename = "...")]` in the generated TypeScript types - Issue #42](https://github.com/Wulf/tsync/issues/42)
  - [Enhanced enum support and types - Issue #55](https://github.com/Wulf/tsync/issues/55)

- [rust-typescript-type-def: Generate TypeScript type definitions for Rust types.](https://github.com/dbeckwith/rust-typescript-type-def)
  - [Feature for serde\_repr - Issue #22 - dbeckwith/rust-typescript-type-def](https://github.com/dbeckwith/rust-typescript-type-def/issues/22)

- [seamless: An opinionated Rust library for creating simple JSON APIs that communicate over HTTP](https://github.com/jsdw/seamless)
- [ts-rpc](https://github.com/chronicl/ts-rpc)