# [State Management](https://vuejs.org/guide/scaling-up/state-management.html)
Discussions:
- 2024-10 [Which do you prefer Pinia, Zustand or Redux to work in Vue? : r/vuejs](https://www.reddit.com/r/vuejs/comments/1gnkonc/which_do_you_prefer_pinia_zustand_or_redux_to/)

  > Unlike React, in Vue reactive state objects can exist in plain JS functions (or classes, whatever you prefer). Re(re-)rendering of components in Vue doesn't affect the execution of these functions - they can be safely called inside a component without silly rules. Therefore, in Vue you usually don't need a special solution ("state manager") that would allow you to write code in a convenient way and then make it work with the rendering library.
  > 
  > Personally, I most often place "global" state at the root of the necessary routes and provide it down with methods for modifications.
  > 
  > In recent projects, I only had one case where a global store would have been a good fit, and that would definitely have been Pinia.
  > 
  > Using Pinia in this context was convenient because:
  > - Frequent read access to the data was needed
  > - There was no need to clear the data to free up memory
  > - It provided a unified approach to data management
  > - It offered excellent Developer Experience (DX) and DevTools
  > 
  > In my opinion, Pinia is ideal for applications that interact with a single, consistent set of data. However, for simple tasks like displaying the username on the top bar or the authentication state, I wouldn't introduce an additional dependency.

## [Provide / Inject](https://vuejs.org/guide/components/provide-inject.html)
Dependency injection.

## [Pinia](https://pinia.vuejs.org/)
[Defining a Store | Pinia](https://pinia.vuejs.org/core-concepts/)

Breaks `shallowRef()` + `triggerRef()`?
