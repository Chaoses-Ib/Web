# [Vue](https://vuejs.org/)
[Wikipedia](https://en.wikipedia.org/wiki/Vue.js), [GitHub](https://github.com/vuejs/core)

[Composition API FAQ | Vue.js](https://vuejs.org/guide/extras/composition-api-faq.html)

[The Future of Vue: Vapor Mode | Vue Mastery](https://www.vuemastery.com/blog/the-future-of-vue-vapor-mode/#supported-features)

[vuejs/awesome-vue: 🎉 A curated list of awesome things related to Vue.js](https://github.com/vuejs/awesome-vue)

## Project layout
[Application Structure | Vuex](https://vuex.vuejs.org/guide/structure.html)

[Vue 3 project structure | Vue FAQ](https://vue-faq.org/en/development/project-structure.html)

[How to structure api calls in Vue.js? - Stack Overflow](https://stackoverflow.com/questions/40813975/how-to-structure-api-calls-in-vue-js)

## Performance
[Performance | Vue.js](https://vuejs.org/guide/best-practices/performance.html)

虽然可以实现高性能，但是写起来心智负担很大，要时刻和“智能”的 reactivity 斗争，小心翼翼地别让它自动追踪。

## Component libraries
- [Element Plus: 🎉 A Vue.js 3 UI Library made by Element team](https://github.com/element-plus/element-plus)

- [Ant Design Vue](https://antdv.com/) ([GitHub](https://github.com/vueComponent/ant-design-vue))

- [Naive UI: A Vue 3 Component Library. Fairly Complete. Theme Customizable. Uses TypeScript. Fast.](https://github.com/tusen-ai/naive-ui)

- [Arco Design Vue](https://arco.design/vue/) ([GitHub](https://github.com/arco-design/arco-design-vue))

History:
- 2023-02 [各位用 vue3 的小伙伴们，有没有 UI 框架推荐？ - V2EX](https://global.v2ex.com/t/919116)

Trees:
- [wsfe/vue-tree: 使用虚拟列表优化的 Vue 树组件 Vue tree component optimized using virtual list](https://github.com/wsfe/vue-tree)
  - 虚拟列表、懒加载、复选框、连接线、搜索（支持远程搜索）、拖曳
- [Arco Design Vue](https://arco.design/vue/component/tree)
  - 虚拟列表、懒加载、复选框、连接线、搜索、拖曳
- [Ant Design Vue: 树形控件 Tree](https://www.antdv.com/components/tree-cn)
  - 虚拟列表、懒加载、复选框、连接线、搜索、拖曳、右键菜单
- [Vue DevUI: Tree 树](https://vue-devui.github.io/components/tree/)
  - 虚拟列表、懒加载、复选框、连接线、搜索、拖曳
- [Naive UI: 树 Tree](https://www.naiveui.com/zh-CN/os-theme/components/tree)
  - 虚拟列表、懒加载、复选框、连接线、搜索、拖曳
  - 只使用虚拟列表时，data 改变后初次渲染时会访问所有 data，随后滚动也会访问相应 data
- [he-tree: Highly customizable draggable Vue.js tree component.](https://github.com/phphe/he-tree)
  - 虚拟列表、复选框、连接线、拖曳
- [vxe-pc-ui: Vxe UI 一个基于 vue 的 PC 端组件库](https://github.com/x-extends/vxe-pc-ui)
- [ysx-library/projects/VirtualTree](https://github.com/lycHub/ysx-library/tree/master/projects/VirtualTree)
- [vue-virtree: vue3 + ts 实现的虚拟树组件，针对了海量数据的优化渲染方案](https://github.com/YauCheun/vue-virtree)

  [手撸一个vue虚拟树组件 - 掘金](https://juejin.cn/post/7129515210255106061)

- Vue 2
  - [vue-easy-tree: A tree component based on vue2.x that supports a small amount of data or a large amount of data, multiple functions, and virtual scrolling.](https://github.com/wchbrad/vue-easy-tree)
    - 虚拟列表、懒加载、操作
- [vue 实现 tree 树形大量数据的虚拟滚动（包含树的搜索，勾选） - 掘金](https://juejin.cn/post/7120508675843686431)

Tables:
- [vxe-table: Vxe table 的表格组件](https://github.com/x-extends/vxe-table)
- [Surely Vue](https://www.surely.cool/) (paid)
- Vue 2
  - [givingwu/vue-virtualized-table: A Virtualized Table component based on Vue.js](https://github.com/givingwu/vue-virtualized-table)
- [Vue 有支持树形表格虚拟滚动的库吗? - V2EX](https://fast.v2ex.com/t/703568)

## Admin dashboards
- [vue-pure-admin: 🔥 全面ESM+Vue3+Vite+Element-Plus+TypeScript编写的一款后台管理系统（兼容移动端）](https://github.com/pure-admin/vue-pure-admin)

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