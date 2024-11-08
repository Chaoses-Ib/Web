# Types
## Primitives
[MDN](https://developer.mozilla.org/en-US/docs/Glossary/Primitive)

- [string](https://developer.mozilla.org/en-US/docs/Glossary/String)
- [number](https://developer.mozilla.org/en-US/docs/Glossary/Number)
- [bigint](https://developer.mozilla.org/en-US/docs/Glossary/BigInt)
- [boolean](https://developer.mozilla.org/en-US/docs/Glossary/Boolean)
- [undefined](https://developer.mozilla.org/en-US/docs/Glossary/Undefined)

  TS: `T?`

- [symbol](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Symbol)
- [null](https://developer.mozilla.org/en-US/docs/Glossary/Null)

  `null` is marked as one of the primitive values, because its behavior is seemingly primitive. However, when using the `typeof` operator, it returns `"object"`. This is considered [a bug](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/typeof#typeof_null), but one which cannot be fixed because it will break too many scripts.

`undefined` vs `null`:
- [What is the difference between null and undefined in JavaScript? - Stack Overflow](https://stackoverflow.com/questions/5076944/what-is-the-difference-between-null-and-undefined-in-javascript)
- [Null vs. Undefined | TypeScript Deep Dive](https://basarat.gitbook.io/typescript/recap/null-undefined)
- [Undefined vs null : r/typescript](https://www.reddit.com/r/typescript/comments/11dpu05/undefined_vs_null/)
- [Typescript - What is the difference between null and undefined? - Stack Overflow](https://stackoverflow.com/questions/44536340/typescript-what-is-the-difference-between-null-and-undefined)

All JS primitives are immutable.
- [Mutable | MDN](https://developer.mozilla.org/en-US/docs/Glossary/Mutable)

## Bit flags
[Bit flags in TypeScript](https://shaky.sh/ts-bit-flags/)

[Bitwise flags - MDN Web Docs Glossary: Definitions of Web-related terms | MDN](https://developer.mozilla.org/en-US/docs/Glossary/Bitwise_flags)

> JS coerces `number`s to 32 bits before performing any bitwise operations, so the maximum number of flags that can be represented by a bit flag type is 32!

Libraries:
- [bitflags-ts](https://bitflags-ts.pages.dev/)
- [aesy/easy-bits: Enums, BitFlags, BitFields, BitMasks and BitArrays for JavaScript & TypeScript](https://github.com/aesy/easy-bits)
- [binarymax/bitflags: Small library for working with an arbitrarily large array of booleans](https://github.com/binarymax/bitflags)
- [A javascript flags system based on bitwise function. This function allows for the representation of a flag state in a single base 10 number. This library also includes the ability to parse information about the flags, with functions to check if any (\`hasAny\`) or all (\`hasAllOf\`), of a group have been set, as well as their inverses (\`notAny\` and \`notAllOf\`, respectively).](https://gist.github.com/keisans/5491894)

Reactive bit flags?

## Maps
Ordered:
- [Map](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map)
- [Set](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set)

[When You Should Prefer Map Over Object In JavaScript](https://www.zhenghao.io/posts/object-vs-map)
> *Unless* the keys are strings of small integers, `Map` is indeed **more performant** than `Object` on insertion, deletion and iteration speed, and it consumes **less memory** than an object of the same size.

## Type annotations
- [JSDoc: An API documentation generator for JavaScript.](https://github.com/jsdoc/jsdoc)

  [Type hints on pure .js files - DEV Community](https://dev.to/manuartero/type-hints-on-pure-js-files-8ee)

  [Types without TypeScript | Depth-First](https://depth-first.com/articles/2021/10/20/types-without-typescript/)

- [ECMAScript proposal: Type Annotations](https://github.com/tc39/proposal-type-annotations)

  [First look: adding type annotations to JavaScript](https://2ality.com/2022/03/type-annotations-first-look.html)