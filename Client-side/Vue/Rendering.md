# [Rendering](https://vuejs.org/guide/extras/rendering-mechanism.html)
![](https://vuejs.org/assets/render-pipeline.CwxnH_lZ.png)

## DOM update timing
> When you mutate reactive state, the DOM is updated automatically. However, it should be noted that the DOM updates are not applied synchronously. Instead, Vue buffers them until the "next tick" in the update cycle to ensure that each component updates only once no matter how many state changes you have made.

[Reactivity in Depth --- Vue.js](https://v2.vuejs.org/v2/guide/reactivity.html#Async-Update-Queue)

### Force update
- `await nextTick()`
- `await new Promise(r => setTimeout(r, 100))` (≥25)
- `MutationObserver`
- [`Window.requestIdleCallback()`](https://developer.mozilla.org/en-US/docs/Web/API/Window/requestIdleCallback)

[vuejs2 - Trigger a re-render within a Vue async watch before a blocking operation - Stack Overflow](https://stackoverflow.com/questions/64212419/trigger-a-re-render-within-a-vue-async-watch-before-a-blocking-operation)

[javascript - Wait for element to render and then execute some function - Stack Overflow](https://stackoverflow.com/questions/75367611/wait-for-element-to-render-and-then-execute-some-function)
