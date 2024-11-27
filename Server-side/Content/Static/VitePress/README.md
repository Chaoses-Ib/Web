# [VitePress](https://vitepress.dev/)
[GitHub](https://github.com/vuejs/vitepress)

> Vite & Vue powered static site generator.

VS Code:
- [VitePress Preview: A very small extension which use VSCode builtin simple browser to preview VitePress pages.](https://github.com/0x-jerry/vscode-vitepress)

## Markdown
- markdown-it
- [Using Vue in Markdown | VitePress](https://vitepress.dev/guide/using-vue)

  [Flowershow](https://flowershow.app/notes/vitepress)

  [MDX support - Issue #248 - vitejs/vite](https://github.com/vitejs/vite/issues/248)

## Vue
[Using Vue in Markdown | VitePress](https://vitepress.dev/guide/using-vue)

[VS Code](https://vitepress.dev/guide/using-vue#vs-code-intellisense-support)

### CSS
```vue
---
hello: world
---

<script setup>
import { ref } from 'vue'

const count = ref(0)
</script>

## Markdown Content

The count is: {{ count }}

<button :class="$style.button" @click="count++">Increment</button>

<style module>
.button {
  color: red;
  font-weight: bold;
}
</style>
```
- Avoid `<style scoped>` in Markdown

  > When used in Markdown, `<style scoped>` requires adding special attributes to every element on the current page, which will significantly bloat the page size. [`<style module>`](../../../../Client-side/Vue/Components/CSS.md#css-modules) is preferred when locally-scoped styling is needed in a page.