# [Component CSS](https://vuejs.org/api/sfc-css-features.html)
## [Component-scoped CSS](https://vuejs.org/api/sfc-css-features.html#scoped-css)
```vue
<style scoped>
.example {
  color: red;
}
</style>

<template>
  <div class="example">hi</div>
</template>
```
```vue
<style>
.example[data-v-f3f3eg9] {
  color: red;
}
</style>

<template>
  <div class="example" data-v-f3f3eg9>hi</div>
</template>
```

[Comparison with Other Frameworks --- Vue.js](https://v2.vuejs.org/v2/guide/comparison.html#HTML-amp-CSS)
> Unless you spread components out over multiple files (for example with [CSS Modules](https://github.com/gajus/react-css-modules)), scoping CSS in React is often done via CSS-in-JS solutions (e.g. [styled-components](https://github.com/styled-components/styled-components) and [emotion](https://github.com/emotion-js/emotion)). This introduces a new component-oriented styling paradigm that is different from the normal CSS authoring process. Additionally, although there is support for extracting CSS into a single stylesheet at build time, it is still common that a runtime will need to be included in the bundle for styling to work properly. While you gain access to the dynamism of JavaScript while constructing your styles, the tradeoff is often increased bundle size and runtime cost.
> 
> If you are a fan of CSS-in-JS, many of the popular CSS-in-JS libraries support Vue (e.g. [styled-components-vue](https://github.com/styled-components/vue-styled-components) and [vue-emotion](https://github.com/egoist/vue-emotion)). The main difference between React and Vue here is that the default method of styling in Vue is through more familiar `style` tags in [single-file components](https://v2.vuejs.org/v2/guide/single-file-components).
> 
> The optional `scoped` attribute automatically scopes this CSS to your component by adding a unique attribute (such as `data-v-21e5b78`) to elements and compiling `.list-container:hover` to something like `.list-container[data-v-21e5b78]:hover`.
>
> Lastly, the styling in Vue's single-file components is very flexible. Through [vue-loader](https://github.com/vuejs/vue-loader), you can use any preprocessor, post-processor, and even deep integration with [CSS Modules](https://vue-loader.vuejs.org/en/features/css-modules.html) -- all within the `<style>` element.

## [CSS Modules](https://vuejs.org/api/sfc-css-features.html#css-modules)

## [`v-bind()` in CSS](https://vuejs.org/api/sfc-css-features.html#v-bind-in-css)
