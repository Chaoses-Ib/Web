# [Rendering](https://vuejs.org/guide/extras/rendering-mechanism.html)
![](https://vuejs.org/assets/render-pipeline.CwxnH_lZ.png)

## DOM update timing
> When you mutate reactive state, the DOM is updated automatically. However, it should be noted that the DOM updates are not applied synchronously. Instead, Vue buffers them until the "next tick" in the update cycle to ensure that each component updates only once no matter how many state changes you have made.