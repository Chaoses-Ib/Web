# Components
## Props
[Props | Vue.js](https://vuejs.org/guide/components/props.html)

### Prop passing
- Static props
  ```vue
  <BlogPost title="My journey with Vue" />

  <!-- Including the prop with no value will imply `true`. -->
  <BlogPost is-published />
  ```
- Dynamic props: `<BlogPost :title="post.title" />`
  ```vue
  <BlogPost :title="post.title" />
  <BlogPost :title="post.title + ' by ' + post.author.name" />

  <!-- Even though `42` is static, we need v-bind to tell Vue that -->
  <!-- this is a JavaScript expression rather than a string.       -->
  <BlogPost :likes="42" />

  <!-- Even though `false` is static, we need v-bind to tell Vue that -->
  <!-- this is a JavaScript expression rather than a string.          -->
  <BlogPost :is-published="false" />

  <BlogPost
    :author="{
      name: 'Veronica',
      company: 'Veridian Dynamics'
    }"
  />
  ```

## v-model
[Component v-model | Vue.js](https://vuejs.org/guide/components/v-model)

> The value returned by `defineModel()` is a ref. It can be accessed and mutated like any other ref, except that it acts as a two-way binding between a parent value and a local one:
> 
> - Its `.value` is synced with the value bound by the parent `v-model`;
> - When it is mutated by the child, it causes the parent bound value to be updated as well.

## Icons
- [xicons: SVG Vue/React components integrated from fluentui-system-icons, ionicons, ant-design-icons, material-design-icons, Font-Awesome, tabler-icons and carbon icons. (Vue3, Vue2, React, SVG)](https://github.com/07akioni/xicons)