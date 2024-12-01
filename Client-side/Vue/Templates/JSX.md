# [JSX](https://vuejs.org/guide/extras/render-function#jsx-tsx)
```js
h(
  'ul',
  { style: "justify-content: center;" },
  items.value.map(({ id, text }) => {
    return h('li', { key: id }, text)
  })
)
```
```jsx
<ul style="justify-content: center;">
  {items.value.map(({ id, text }) => {
    return <li key={id}>{text}</li>
  })}
</ul>
```
- JSX can highlight the element, attributes, values and content with different colors, while with render functions there are just `h()`, arguments/variables and strings
  - Built-in elements and components have different colors in both render functions and JSX
- JSX can remove the `h()` noise
- JSX makes it much familiar to HTML
- Since React is dominant, using JSX may make AI tools work better

[vuejs/babel-plugin-jsx](https://github.com/vuejs/babel-plugin-jsx)
- [@vitejs/plugin-vue-jsx](https://github.com/vitejs/vite-plugin-vue/blob/main/packages/plugin-vue-jsx/README.md)

  `include`: `/\.[jt]sx$/`

  SFC: `<script setup lang="tsx">`

## Templates vs. JSX
Templates for presentational components and render function / JSX for logical ones.

> If you are familiar with Virtual DOM concepts and prefer the raw power of JavaScript, you can also [directly write render functions](https://vuejs.org/guide/extras/render-function.html) instead of templates, with optional JSX support. However, do note that they do not enjoy the same level of compile-time optimizations as templates.

[Comparison with Other Frameworks --- Vue.js](https://v2.vuejs.org/v2/guide/comparison.html#HTML-amp-CSS)
> Render functions with JSX have a few advantages:
> - You can leverage the power of a full programming language (JavaScript) to build your view. This includes temporary variables, flow controls, and directly referencing JavaScript values in scope.
> - The tooling support (e.g. linting, type checking, editor autocompletion) for JSX is in some ways more advanced than what's currently available for Vue templates.
> 
> In Vue, we also have [render functions](https://v2.vuejs.org/v2/guide/render-function) and even [support JSX](https://v2.vuejs.org/v2/guide/render-function#JSX), because sometimes you do need that power. However, as the default experience we offer templates as a simpler alternative. Any valid HTML is also a valid Vue template, and this leads to a few advantages of its own:
> - For many developers who have been working with HTML, templates feel more natural to read and write. The preference itself can be somewhat subjective, but if it makes the developer more productive then the benefit is objective.
> - HTML-based templates make it much easier to progressively migrate existing applications to take advantage of Vue's reactivity features.
> - It also makes it much easier for designers and less experienced developers to parse and contribute to the codebase.
> - You can even use pre-processors such as Pug (formerly known as Jade) to author your Vue templates.
>
> On a higher level, we can divide components into two categories: presentational ones and logical ones. We recommend using templates for presentational components and render function / JSX for logical ones. The percentage of these components depends on the type of app you are building, but in general we find presentational ones to be much more common.

- 2022-11 [Are you using jsx? : r/vuejs](https://www.reddit.com/r/vuejs/comments/yue752/are_you_using_jsx/)

  > I am trying TSX, nice for a few reasons. Better TS integration (Volar slow on huge projects), easy to declare many components in one file, less boilerplate. 
  > SFCs are fine too, both seem adequate.

  > Necro but Vue's lifecycle hooks, composition api and Pinia are way better than React's obfuscated hooks and contexts. I like JSX more than Vue template (yes, I am a weirdo, but there are reasons - mostly flexibility). But I like Vue's everything else more.

  > I worked with jsx or render functions for highly dynamic use cases. For example render multiple child’s within the component based on multiple if conditions and so on.. so it’s a pretty flexible approach, but kinda tradeoff for readability if u are not used to it.
  > 
  > For Styles and CSS I use tailwind , so it’s pretty easy to use the `class` prop on the `div` and apply the classes.