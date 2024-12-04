# Component Libraries
- [PrimeVue: Next Generation Vue UI Component Library](https://github.com/primefaces/primevue)
  - 风评较好

- [Naive UI: A Vue 3 Component Library. Fairly Complete. Theme Customizable. Uses TypeScript. Fast.](#naive-ui)

- [Quasar Framework: Build high-performance VueJS user interfaces in record time](https://github.com/quasarframework/quasar)
  - 依赖 CLI

- [Vuetify: 🐉 Vue Component Framework](https://github.com/vuetifyjs/vuetify)
  - Vue 3 支持不成熟

- [Nuxt UI: A UI Library for Modern Web Apps, powered by Vue & Tailwind CSS.](https://github.com/nuxt/ui)

- [Element Plus: 🎉 A Vue.js 3 UI Library made by Element team](https://github.com/element-plus/element-plus)

- [daisyUI: 🌼 🌼 🌼 🌼 🌼  The most popular, free and open-source Tailwind CSS component library](https://github.com/saadeghi/daisyui)

- [Ant Design Vue](https://antdv.com/) ([GitHub](https://github.com/vueComponent/ant-design-vue))
  - > ant-design-vue 有些组件，比如 table\select,，如果你有海量数据的需求的话，它是不提供虚拟化的，在他的付费 pro 版本里有

- [Arco Design Vue](https://arco.design/vue/) ([GitHub](https://github.com/arco-design/arco-design-vue))

- [Lew UI: A beautiful component library based on vue3](https://github.com/lewkamtao/Lew-UI)

  [爆肝两年！打磨了一款 Vue 3 组件库（很新），欢迎体验 👏 - V2EX](https://www.v2ex.com/t/1072340)

[UI Lib Picker](https://ui-libs.vercel.app/)

Discussions:
- 2023-02 [各位用 vue3 的小伙伴们，有没有 UI 框架推荐？ - V2EX](https://global.v2ex.com/t/919116)
- 2024-01 [Vue ui 组件库选择 - V2EX](https://www.v2ex.com/t/1006175)

  > 推荐 naive-ui ，不建议使用 ant-design-vue ，ant-design-vue 有些组件，比如 table\select,，如果你有海量数据的需求的话，它是不提供虚拟化的，在他的付费 pro 版本里有。
  > 
  > 尤雨溪推荐过这个
- 2024-01 [Which UI libraries are the most liked in Vue? : r/vuejs](https://www.reddit.com/r/vuejs/comments/196roib/which_ui_libraries_are_the_most_liked_in_vue/)

  > I can tell you what we use & we DONT like......`Veutify`. Their vue 3 upgrade has kind of been a ClusterF...

  > Quasar is hyped heavily on the sub, but it's not aesthetically pleasing and basically involves being locked in to their CLI. Primevue looks nice, shadcn/radix is promising. Report back if one fits your needs, few folks do

- 2024-05 [这几个 ui 组件库中怎么选 - V2EX](https://www.v2ex.com/t/1041472)

  > Naive UI 好看，不过这玩意常常要写 render 函数，比较麻烦，最好结合 jsx 使用。

## [Naive UI](https://github.com/tusen-ai/naive-ui)
> A Vue 3 Component Library. Fairly Complete. Theme Customizable. Uses TypeScript. Fast.

- [中文文档](https://www.naiveui.com/zh-CN/os-theme/docs/introduction)
- [受控模式与非受控模式 - Naive UI](https://www.naiveui.com/zh-CN/os-theme/docs/controlled-uncontrolled)
- [VitePress](https://www.naiveui.com/zh-CN/os-theme/docs/vitepress)
  - 不引入任何组件时基本不影响体积，只会增加 29B，但引入 Button 后就会增加 104 KiB，不过压缩后只增加了 30 KiB
    - 其中 HTML 增加 1.1 KiB，assets 增加 100 KiB
  - 默认配置不会与 VitePress 的 dark theme 联动
    ```js
    const NaiveUIProvider = defineComponent({
      render() {
        const data = useData()
        return h(
          NConfigProvider,
          { abstract: true, inlineThemeDisabled: true, theme: data.isDark.value ? darkTheme : lightTheme },
          {
            default: () => [
              h(Layout, null, { default: this.$slots.default?.() }),
              import.meta.env.SSR ? [h(CssRenderStyle), h(VitepressPath)] : null
            ]
          }
        )
      }
    })
    ```

[组件](https://www.naiveui.com/zh-CN/os-theme/components/button):
- [Select](https://www.naiveui.com/zh-CN/os-theme/components/select)
  - `@update:value` 回调中无法阻止事件，不能实现在 `options` 里添加选中时再进行检查的 option，比如弹窗新建选项。不过可以用 `<template #action>`/`<template #header>` 实现类似效果。
    ```vue
    <n-select
      :options="[...configs.map(c => {
        return { value: c.name, label: c.name }
      }), { value: 'create', label: $t('createConfig') }]"
      v-model:value="selectedConfigName"
      @update:value="handleConfigChange"
    />
    ```
    ```vue
    <n-select
      :options="configs"
      label-field="name"
      value-field="name"
      v-model:value="selectedConfigName"
      @update:value="handleConfigChange"
    >
      <template #action>
        <n-button @click="createConfig">{{ $t('createConfig') }}</n-button>
      </template>
    </n-select>
    ```

第三方组件：
- [pro-components-naive-ui: 基于 naive-ui 二次封装，简化中后台开发](https://github.com/Zheng-Changfu/pro-components-naive-ui)
  - [组件](https://naive-ui.pro-components.cn/zh-CN/os-theme/components/form)
- [vue3-dynamic-form](https://vue3-dynamic-form.dumogu.top/)

## Trees
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

## Tables
- [vxe-table: Vxe table 的表格组件](https://github.com/x-extends/vxe-table)
- [Surely Vue](https://www.surely.cool/) (paid)
- Vue 2
  - [givingwu/vue-virtualized-table: A Virtualized Table component based on Vue.js](https://github.com/givingwu/vue-virtualized-table)
- [Vue 有支持树形表格虚拟滚动的库吗? - V2EX](https://fast.v2ex.com/t/703568)

## Icons
- [xicons: SVG Vue/React components integrated from fluentui-system-icons, ionicons, ant-design-icons, material-design-icons, Font-Awesome, tabler-icons and carbon icons. (Vue3, Vue2, React, SVG)](https://github.com/07akioni/xicons) (discontinued)
  - No `Icon` prefix
  - [引入图标库的图标后很影响项目的打包速度 - Issue #870 - 07akioni/xicons](https://github.com/07akioni/xicons/issues/870)
- [Tabler Icons for Vue - Tabler Documentation](https://tabler.io/docs/icons/vue)
