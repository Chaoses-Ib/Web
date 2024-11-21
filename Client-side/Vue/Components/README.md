# Components
[Components Basics | Vue.js](https://vuejs.org/guide/essentials/component-basics.html)

## [Web Components](https://vuejs.org/guide/extras/web-components.html)

## [Single-File Components](https://vuejs.org/guide/scaling-up/sfc.html)
[Introduction | Vue.js](https://vuejs.org/guide/introduction.html#single-file-components)

[SFC Syntax Specification | Vue.js](https://vuejs.org/api/sfc-spec.html)

JS + Template (HTML) + CSS in a single file.

```vue
<script setup>
import { ref } from 'vue'
const count = ref(0)
</script>

<template>
  <button @click="count++">Count is: {{ count }}</button>
</template>

<style scoped>
button {
  font-weight: bold;
}
</style>
```

## [Component registration](https://vuejs.org/guide/components/registration.html)
- Global registration
- Local registration

## Lifecycle
[Lifecycle Hooks | Vue.js](https://vuejs.org/guide/essentials/lifecycle)

![](https://vuejs.org/assets/lifecycle.MuZLBFAS.png)

[Composition API: Lifecycle Hooks | Vue.js](https://vuejs.org/api/composition-api-lifecycle.html)

## Props
[Props | Vue.js](https://vuejs.org/guide/components/props.html)

[Components Basics | Vue.js](https://vuejs.org/guide/essentials/component-basics.html#passing-props)

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

## [Events](https://vuejs.org/guide/components/events.html)
[Components Basics | Vue.js](https://vuejs.org/guide/essentials/component-basics.html#listening-to-events)

```vue
<!-- BlogPost.vue, omitting <script> -->
<template>
  <div class="blog-post">
    <h4>{{ title }}</h4>
    <button @click="$emit('enlarge-text')">Enlarge text</button>
  </div>
</template>
```
```vue
<BlogPost
  ...
  @enlarge-text="postFontSize += 0.1"
 />
```

## [Component v-model](https://vuejs.org/guide/components/v-model)
Props and slots are one-way binding, models are two-way binding.

```vue
<!-- Child.vue -->
<script setup>
const props = defineProps(['modelValue'])
const emit = defineEmits(['update:modelValue'])
</script>

<template>
  <input
    :value="props.modelValue"
    @input="emit('update:modelValue', $event.target.value)"
  />
</template>
```

```vue
<script setup>
const model = defineModel()
</script>

<template>
  <input v-model="model" />
</template>
```

> The value returned by `defineModel()` is a ref. It can be accessed and mutated like any other ref, except that it acts as a two-way binding between a parent value and a local one:
> 
> - Its `.value` is synced with the value bound by the parent `v-model`;
> - When it is mutated by the child, it causes the parent bound value to be updated as well.

## [Fallthrough attributes](https://vuejs.org/guide/components/attrs.html)

## [Slots](https://vuejs.org/guide/components/slots.html)
```vue
<!-- AlertBox.vue -->
<template>
  <div class="alert-box">
    <strong>This is an Error for Demo Purposes</strong>
    <slot />
  </div>
</template>
```
```vue
<AlertBox>
  Something bad happened.
</AlertBox>
```

## [Async components](https://vuejs.org/guide/components/async.html)

## [Built-in components](https://vuejs.org/api/built-in-components.html)
- [Transition](https://vuejs.org/guide/built-ins/transition.html)
- [Suspense](https://vuejs.org/guide/built-ins/suspense.html)

[Built-in Special Elements | Vue.js](https://vuejs.org/api/built-in-special-elements.html)