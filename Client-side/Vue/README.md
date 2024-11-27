# [Vue](https://vuejs.org/)
[Wikipedia](https://en.wikipedia.org/wiki/Vue.js), [GitHub](https://github.com/vuejs/core)

[Introduction | Vue.js](https://vuejs.org/guide/introduction.html)

[Tutorial | Vue.js](https://vuejs.org/tutorial/)

[API Reference | Vue.js](https://vuejs.org/api/)

[Ways of Using Vue | Vue.js](https://vuejs.org/guide/extras/ways-of-using-vue.html)
> Depending on your use case, Vue can be used in different ways:
> - Enhancing static HTML without a build step
> - Embedding as Web Components on any page
> - Single-Page Application (SPA)
> - Fullstack / Server-Side Rendering (SSR)
> - Jamstack / Static Site Generation (SSG)
> - Targeting desktop, mobile, WebGL, and even the terminal

[The Future of Vue: Vapor Mode | Vue Mastery](https://www.vuemastery.com/blog/the-future-of-vue-vapor-mode/#supported-features)

[vuejs/awesome-vue: 🎉 A curated list of awesome things related to Vue.js](https://github.com/vuejs/awesome-vue)

## Tooling
[Tooling | Vue.js](https://vuejs.org/guide/scaling-up/tooling.html)

[Production Deployment | Vue.js](https://vuejs.org/guide/best-practices/production-deployment.html)

[Using Vue with TypeScript | Vue.js](https://vuejs.org/guide/typescript/overview.html)

[Vue SFC Playground](https://play.vuejs.org/#eNo9jcEKwjAMhl/lt5fpQYfXUQfefAMvvRQbddC1pUuHUPrudg4HIcmXjyRZXEM4zYlEJ+T0iEPgXjn6BB8Zhp46WUZWDjCa9f6w9kAkTtH9CRinV4fmRtZ63H20Ztesqiylphqy3R5UYBqD1UyVAPk+9zkvV1CKbCv9poMLiTEfR2/IXpSoXomqZLtti/IFwVtA9A==)

VS Code: [Vue - Official - Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=Vue.volar)

## Composition API
[Composition API FAQ | Vue.js](https://vuejs.org/guide/extras/composition-api-faq.html)

[Composables | Vue.js](https://vuejs.org/guide/reusability/composables.html)
> In the context of Vue applications, a "composable" is a function that leverages Vue's Composition API to encapsulate and reuse **stateful logic**.
> 
> When building frontend applications, we often need to reuse logic for common tasks. For example, we may need to format dates in many places, so we extract a reusable function for that. This formatter function encapsulates **stateless logic**: it takes some input and immediately returns expected output. There are many libraries out there for reusing stateless logic - for example [lodash](https://lodash.com/) and [date-fns](https://date-fns.org/), which you may have heard of.
> 
> By contrast, stateful logic involves managing state that changes over time. A simple example would be tracking the current position of the mouse on a page. In real-world scenarios, it could also be more complex logic such as touch gestures or connection status to a database.

Just function + reactivity.

## Project layout
[Application Structure | Vuex](https://vuex.vuejs.org/guide/structure.html)

[Vue 3 project structure | Vue FAQ](https://vue-faq.org/en/development/project-structure.html)

[How to structure api calls in Vue.js? - Stack Overflow](https://stackoverflow.com/questions/40813975/how-to-structure-api-calls-in-vue-js)

## Performance
[Performance | Vue.js](https://vuejs.org/guide/best-practices/performance.html)

虽然可以实现高性能，但是写起来心智负担很大，要时刻和“智能”的 reactivity 斗争，小心翼翼地别让它自动追踪。

[火狐浏览器118版对Vue 3进行优化 这将有助于更快地执行Vue.js -- 蓝点网](https://www.landiannews.com/archives/100106.html)

## Admin dashboards
- [vue-pure-admin: 🔥 全面ESM+Vue3+Vite+Element-Plus+TypeScript编写的一款后台管理系统（兼容移动端）](https://github.com/pure-admin/vue-pure-admin)

- [Naive UI](https://www.naiveui.com/zh-CN/os-theme/docs/community)
  - [SoybeanAdmin: A clean, elegant, beautiful and powerful admin template, based on Vue3, Vite5, TypeScript, Pinia, NaiveUI and UnoCSS. 一个清新优雅、高颜值且功能强大的后台管理模板，基于最新的前端技术栈，包括 Vue3, Vite5, TypeScript, Pinia, NaiveUI 和 UnoCSS。](https://github.com/soybeanjs/soybean-admin)
  - [Naive Ui Admin: 一款基于 Vue3、Vite2 和 TypeScript 的先进中后台解决方案，集成了前沿的前端技术栈和典型业务模型。它拥有二次封装组件、动态菜单、权限校验、粒子化权限控制等核心功能，旨在帮助企业快速构建高质量的中后台项目。无论在新技术运用或业务实践层面，都能为您提供有力支持，并将持续更新，以满足您不断变化的需求](https://github.com/jekip/naive-ui-admin) (inactive)

- [V3 Admin Vite](https://github.com/un-pany/v3-admin-vite)

- [Fantastic-admin: ⭐⭐⭐⭐⭐ 一款开箱即用的 Vue 中后台管理系统框架，支持多款 UI 组件库，兼容PC、移动端。vue-admin, vue-element-admin, vue后台, 后台系统, 后台框架, 管理后台, 管理系统](https://github.com/fantastic-admin/basic)

- [cool-admin-vue: 🔥 cool-admin一个很酷的后台权限管理框架，模块化、插件化、CRUD极速开发，永久开源免费，基于midway.js 3.0、typeorm、mysql、jwt、element-ui、vuex、vue-router、vue等构建](https://github.com/cool-team-official/cool-admin-vue)

- [RuoYi 若依](https://www.ruoyi.vip/)
  - [RuoYi-Vue: 🎉 基于SpringBoot，Spring Security，JWT，Vue & Element 的前后端分离权限管理系统，同时提供了 Vue3 的版本](https://gitee.com/y_project/RuoYi-Vue)

- [Vuexy - Bootstrap HTML Admin Template - PixInvent](https://pixinvent.com/vuexy-bootstrap-html-admin-template/) (paid)

Vue 2:
- [vue-element-admin: :tada: A magical vue admin https://panjiachen.github.io/vue-element-admin](https://github.com/PanJiaChen/vue-element-admin) (discontinued)
  - [Demo](https://panjiachen.github.io/vue-element-admin/)
- [vue-admin-template: a vue2.0 minimal admin template](https://github.com/PanJiaChen/vue-admin-template)
- [iView Admin: Vue 2.0 admin management system template based on iView](https://github.com/iview/iview-admin)

History:
- 2023-03 [请教前端同胞，如何快速搭建一个后台管理的前端项目 - V2EX](https://hk.v2ex.com/t/922121)

## Discussions
2022-09 [Vue is actually pretty good : r/ProgrammerHumor](https://www.reddit.com/r/ProgrammerHumor/comments/x4s4pu/vue_is_actually_pretty_good/)
- > If you like Vue, you'll love Svelte

[X 上的 Sukka / 毛绒绒的大尾巴🦊："（1/8）不管大部分人怎么评价 React Hooks、React Concurrent Rendering、RSC 的心智模型多么复杂和难以理解，从我过去五个月的经历来看，Vue 的 Everyday DX 是远远不如 React 的 ------ 不至于 Bad，但是非常 Annoying。开个串聊一下（千字长文预警）" / X](https://x.com/isukkaw/status/1688077064359079936)
> 不管大部分人怎么评价 React Hooks、React Concurrent Rendering、RSC 的心智模型多么复杂和难以理解，从我过去五个月的经历来看，Vue 的 Everyday DX 是远远不如 React 的 —— 不至于 Bad，但是非常 Annoying。开个串聊一下（千字长文预警）  
> 楔子：五个月前，公司让我接手维护一个 Vue 3 based 的项目。接手前，公司给了我一周时间学习 Vue 3。在花了一周从零开始学习 Vue 3 后，我至少已经学到「在组件生命周期外的 module level 声明的 ref 虽然也可以在多个组件中共享状态，但是在 SSR 中是 thread unsafe 的」这一步了。  
> 首先就是 VSCode 上一塌糊涂的 Vue TypeScript 支持。自从接手这个 Vue 项目以来，我每天需要 Command + P 然后 Reload Window 三次以上。每当我 import 完一个 module，发现 Intellisense 不能自动提示和补全导出时，我就知道需要 Reload VSCode Window 了。  
> 我试过，仅 Reload TypeScript LSP 或者仅 Reload Volar.js 是不够的，只有 Reload Window 才能恢复自动补全。  
> 按照写 Vue 3 没群友们的说法，他们每天都得重启 VSCode 八次以上，我只 Reload VSCode  Window 三次，已经算非常少的了。  
> 然后就是 Vue SFC 的 HMR 体验。和 React Fast Refresh 会尽可能保留组件状态不同，Vue 的 HMR 在绝大部分情况下（例如更改 `<script>` 内容）都需要 re-mount 组件，因此在组件里声明的所有状态都会丢失。过去一周我在调试项目中一个复杂的分页表单组件时，这个「特性」被无限放大了。  
> 为了调试复现这个复杂分页表单组件的问题，我填了一堆信息，才走到有问题的状态。改一下代码，Command + S 以后，整个表单组件的状态都丢失了，整个表单都需要我从头填。当然，就连 HMR 这件事本身，Vite + Vue 也做不好  
> 从我接手这个 Vue 项目开始，每三次 HMR 一定发生一次「can not access variable before initialized」。一旦撞了 TDZ（给不懂的人解释一下。TDZ 是 Temporal Dead Zone 的缩写），Vite 的 HMR 就挂掉、不能 recovery 了，必须 Command + R 刷新页面。  
> 感谢 Vite 和 Vite Vue Plugin，每次刷新页面都要浪费我 10 秒时间。  
> 我花了一天研究编译产物，发现 Vite HMR 后会把 const xxx = 放在 call site 的后面、而不是前面，不知道这个锅该给 Vite Vue Plugin 还是 Vue SFC Compiler，反正不能甩给 Vite，Vite + React Fresh 跑得就好好的。

[Vue? Lol. I've been using Vue full-time in multiple large corporate code bases f... | Hacker News](https://news.ycombinator.com/item?id=41929308)
> Vue? Lol. I've been using Vue full-time in multiple large corporate code bases for the past 3½ years and I'd exchange it for React in a heartbeat. Its type checker and build toolchain are so abysmally bad and bug-riddled that I run into new bugs and limitations on the daily. …which is no surprise really if you introduce a new custom file format and make type checking an afterthought.