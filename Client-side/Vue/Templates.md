# Templates
[Template Syntax | Vue.js](https://vuejs.org/guide/essentials/template-syntax.html)

## Whitespaces
[`app.config.compilerOptions.whitespace`](https://vuejs.org/api/application#app-config-compileroptions-whitespace)
- `condense`
  1. Leading / ending whitespace characters inside an element are condensed into a single space.
  2. Whitespace characters between elements that contain newlines are removed.
  3. Consecutive whitespace characters in text nodes are condensed into a single space.
- `preserve`: Only (1)

(1) can be worked around by (2).

[Extra Blank Spaces Between Elements In Rendered Template - Issue #7701 - vuejs/vue](https://github.com/vuejs/vue/issues/7701)