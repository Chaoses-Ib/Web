# Templates
[Template Syntax | Vue.js](https://vuejs.org/guide/essentials/template-syntax.html)

- Mustaches: `{{ }}`
- Directives: `v-`

> Template expressions are sandboxed and only have access to a [restricted list of globals](https://github.com/vuejs/core/blob/main/packages/shared/src/globalsAllowList.ts#L3). The list exposes commonly used built-in globals such as `Math` and `Date`.

## Directives
![](https://vuejs.org/assets/directive.DtZKvoAo.png)
- JavaScript expressions can be used in the attribute value of any directives.

[Built-in Directives | Vue.js](https://vuejs.org/api/built-in-directives.html):
- [`v-bind`](https://vuejs.org/api/built-in-directives.html#v-bind) / `:`
  - Same-name shorthand (Vue v3.4+)
    ```vue
    <!-- same as :id="id" -->
    <div :id></div>

    <!-- this also works -->
    <div v-bind:id></div>
    ```
  - Dynamically binding multiple attributes
  - [Class and style bindings](https://vuejs.org/guide/essentials/class-and-style.html)

- [Conditional rendering](https://vuejs.org/guide/essentials/conditional.html)
  - `v-if`
  - `v-show`
  - `<template>`

- [List rendering](https://vuejs.org/guide/essentials/list.html)

- [Event handling](https://vuejs.org/guide/essentials/event-handling.html)
  - `v-on` / `@`

- [Form input bindings](https://vuejs.org/guide/essentials/forms.html)
  - `v-model`

  Why not just hack `:value` to make it a two-way binding? Like WPF?

- `v-slot` / `#`

[Custom Directives | Vue.js](https://vuejs.org/guide/reusability/custom-directives.html)

## [Template refs](https://vuejs.org/guide/essentials/template-refs.html)
```vue
<input ref="input">
```

## Whitespaces
[`app.config.compilerOptions.whitespace`](https://vuejs.org/api/application#app-config-compileroptions-whitespace)
- `condense`
  1. Leading / ending whitespace characters inside an element are condensed into a single space.
  2. Whitespace characters between elements that contain newlines are removed.
  3. Consecutive whitespace characters in text nodes are condensed into a single space.
- `preserve`: Only (1)

(1) can be worked around by (2).

[Extra Blank Spaces Between Elements In Rendered Template - Issue #7701 - vuejs/vue](https://github.com/vuejs/vue/issues/7701)

## [In-DOM template parsing caveats](https://vuejs.org/guide/essentials/component-basics.html#in-dom-template-parsing-caveats)
