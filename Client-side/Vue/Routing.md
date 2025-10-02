# [Routing](https://vuejs.org/guide/scaling-up/routing.html)
## [vue-router](https://router.vuejs.org/)
[GitHub](https://github.com/vuejs/router)

### Base
- v3: [base](https://web.archive.org/web/20180428222740/https://router.vuejs.org/en/api/options.html#mode)

  [javascript - Vue.js routes serving from subdirectory - Stack Overflow](https://stackoverflow.com/questions/43918367/vue-js-routes-serving-from-subdirectory)

- v4: [移动了 `base` 配置](https://github.com/vuejs/router/blob/707608e0fd1efab27cd8001799c3a70f4fa12af0/packages/docs/zh/guide/migration/index.md#%E7%A7%BB%E5%8A%A8%E4%BA%86-base-%E9%85%8D%E7%BD%AE)
  ```js
  import { createRouter, createWebHistory } from 'vue-router'
  createRouter({
    history: createWebHistory('/base-directory/'),
    routes: [],
  })
  ```
  [vue.js - How to set vue 3 with router from subfolder - Stack Overflow](https://stackoverflow.com/questions/64723498/how-to-set-vue-3-with-router-from-subfolder)

### Data passing
- `useRoute()` / `$route`

  [Dynamic Route Matching with Params | Vue Router](https://router.vuejs.org/guide/essentials/dynamic-matching.html)
  > One thing to note when using routes with params is that when the user navigates from `/users/johnny` to `/users/jolyne`, **the same component instance will be reused**. Since both routes render the same component, this is more efficient than destroying the old instance and then creating a new one. **However, this also means that the lifecycle hooks of the component will not be called**.

  [vue.js - Force Don't reuse same component instance for Dynamic routes, vue-router - Stack Overflow](https://stackoverflow.com/questions/64445724/force-dont-reuse-same-component-instance-for-dynamic-routes-vue-router)
  ```vue
  <template>
    <main :key="$route.path">
      <router-view></router-view>
    </main>
  </template>
  ```
  ~~However, this will cause the component to be recreated when the route changes back to the same path.~~

  [keep-alive-component should allow create multiple instance when needed - Issue #5823 - vuejs/vue](https://github.com/vuejs/vue/issues/5823)

  Or just wrap the component to another one.

  [javascript - vue-router creates always a new Component instance - Stack Overflow](https://stackoverflow.com/questions/49424507/vue-router-creates-always-a-new-component-instance)

- `meta`

  [Route Meta Fields | Vue Router](https://router.vuejs.org/guide/advanced/meta.html)

- [Params](https://router.vuejs.org/guide/essentials/dynamic-matching.html)

  [Routes' Matching Syntax | Vue Router](https://router.vuejs.org/guide/essentials/route-matching-syntax.html)

- [Query and hash](https://router.vuejs.org/api/interfaces/RouteQueryAndHash.html)
  - `v-if="$route.query.dev"` and `?dev=1`
  - Be careful with infinite redirection loop
  - Force query
    ```js
    if (import.meta.env.DEV && !to.query.dev) {
      next({ ...to, query: { dev: 1, ...to.query } });
    } else {
      next()
    }
    ```
    [refactor(router): DEV force `dev=1` - 16Hexa/hap-console@09d70d9](https://github.com/16Hexa/hap-console/commit/09d70d9d6d52a1552bb67df943e7a4ff4664f090)
  - Keep query

    [vuejs2 - Vue Router: Keep query parameter and use same view for children - Stack Overflow](https://stackoverflow.com/questions/45091380/vue-router-keep-query-parameter-and-use-same-view-for-children)

    [javascript - Vue Router, Are there a way to retain the query from previous page with Navigation guard - Stack Overflow](https://stackoverflow.com/questions/77039941/vue-router-are-there-a-way-to-retain-the-query-from-previous-page-with-navigati)

  [javascript - How to set URL query params in Vue with Vue-Router - Stack Overflow](https://stackoverflow.com/questions/40382388/how-to-set-url-query-params-in-vue-with-vue-router)

- `props`

  [Passing Props to Route Components | Vue Router](https://router.vuejs.org/guide/essentials/passing-props.html)
  > Using `$route` or `useRoute()` in your component creates a tight coupling with the route which limits the flexibility of the component as it can only be used on certain URLs. While this is not necessarily a bad thing, we can decouple this behavior with a `props` option.
