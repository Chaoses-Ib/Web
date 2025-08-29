# CSS Basic User Interface
[CSS Basic User Interface Module Level 3 (CSS3 UI)](https://drafts.csswg.org/css-ui-3/)

[CSS Basic User Interface Module Level 4](https://drafts.csswg.org/css-ui/)

## User interaction
### Controlling content selection
- [`user-select`](https://developer.mozilla.org/en-US/docs/Web/CSS/user-select)
  - `auto` (default)
  - `text`
  - `all`
  - `contain`

    > The CSS basic user interface module defines a `contain` value for the `user-select` property to enable selection to start within the element to be contained by the bounds of that element, however, this is not supported in any browsers.

[css - How to make HTML Text unselectable - Stack Overflow](https://stackoverflow.com/questions/2310734/how-to-make-html-text-unselectable)

[refactor(tree): show-line - tusen-ai/naive-ui@1d59070](https://github.com/tusen-ai/naive-ui/commit/1d5907052b534fc0084b2fb1453d0b2dff43c41d)
```html
<style>
.n-tree-node-content {
  user-select: text !important;
}
</style>
```