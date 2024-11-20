# Reactivity
[Reactivity in Depth | Vue.js](https://vuejs.org/guide/extras/reactivity-in-depth.html)

In Vue 3, Proxies are used for reactive objects and getter / setters are used for refs:
```js
function reactive(obj) {
  return new Proxy(obj, {
    get(target, key) {
      track(target, key)
      return target[key]
    },
    set(target, key, value) {
      target[key] = value
      trigger(target, key)
    }
  })
}

function ref(value) {
  const refObject = {
    get value() {
      track(refObject, 'value')
      return value
    },
    set value(newValue) {
      value = newValue
      trigger(refObject, 'value')
    }
  }
  return refObject
}
```

[Reactivity Fundamentals | Vue.js](https://vuejs.org/guide/essentials/reactivity-fundamentals.html)

`reactive()` cannot be used on primitives, but all JS primitives are immutable.

## [Deep reactivity](https://vuejs.org/guide/essentials/reactivity-fundamentals.html#deep-reactivity)
```js
import { ref } from 'vue'

const obj = ref({
  nested: { count: 0 },
  arr: ['foo', 'bar']
})

function mutateDeeply() {
  // these will work as expected.
  obj.value.nested.count++
  obj.value.arr.push('baz')
}
```
Non-primitive values are turned into reactive proxies via [`reactive()`](https://vuejs.org/guide/essentials/reactivity-fundamentals.html#reactive). It is possible to opt-out of deep reactivity with [shallow refs](https://vuejs.org/api/reactivity-advanced.html#shallowref). For shallow refs, only `.value` access is tracked for reactivity. Shallow refs can be used for optimizing performance by avoiding the observation cost of large objects, or in cases where the inner state is managed by an external library.

> Shallow data structures should only be used for root level state in a component. Avoid nesting it inside a deep reactive object as it creates a tree with inconsistent reactivity behavior which can be difficult to understand and debug.

`ref.value = v` works, but `triggerRef(ref)` doesn't?
- `triggerRef(ref)` only triggers indirect dependencies, not the ref itself?

What about more fine-grained, mixed reactivity?
- [`markRaw()`](https://vuejs.org/api/reactivity-advanced.html#markraw)

  > They are considered advanced because the raw opt-out is only at the root level, so if you set a nested, non-marked raw object into a reactive object and then access it again, you get the proxied version back. This can lead to **identity hazards** \- i.e. performing an operation that relies on object identity but using both the raw and the proxied version of the same object:
  > 
  > ```js
  > const foo = markRaw({
  >   nested: {}
  > })
  > 
  > const bar = reactive({
  >   // although `foo` is marked as raw, foo.nested is not.
  >   nested: foo.nested
  > })
  > 
  > console.log(foo.nested === bar.nested) // false
  > ```
  > Identity hazards are in general rare. However, to properly utilize these APIs while safely avoiding identity hazards requires a solid understanding of how the reactivity system works.

[Reduce Reactivity Overhead for Large Immutable Structures](https://vuejs.org/guide/best-practices/performance.html#reduce-reactivity-overhead-for-large-immutable-structures)

[Support more collection data types in v-for - Issue #2410 - vuejs/vue](https://github.com/vuejs/vue/issues/2410)
- [bluecanvas/vue-reactive-collection: Reactive Map and Set for Vue 2](https://github.com/bluecanvas/vue-reactive-collection)

[vue.js - Vue 3 reactivity of a primitive ref passed as a prop - Stack Overflow](https://stackoverflow.com/questions/75297576/vue-3-reactivity-of-a-primitive-ref-passed-as-a-prop)

## [Computed properties](https://vuejs.org/guide/essentials/computed)
Computed properties are cached based on their reactive dependencies. A computed property will only re-evaluate when some of its reactive dependencies have changed.

How are computed properties different from methods? Just caching?

Performance:
- [When to avoid VueJs Computed Properties for greater performance - DEV Community](https://dev.to/pecus/when-to-avoid-vuejs-computed-properties-for-greater-performance-5anj)
- [very poorly performance on computed property of computed property that accesses a nested array - Issue #6660 - vuejs/vue](https://github.com/vuejs/vue/issues/6660)

## Ref unwrapping
[Additional Ref Unwrapping Details](https://vuejs.org/guide/essentials/reactivity-fundamentals.html#additional-ref-unwrapping-details)

- As reactive object property (`reactive()` will unwrap inner refs)
  
  Caveat in arrays and collections: Unlike reactive objects, there is **no** unwrapping performed when the ref is accessed as an element of a reactive array or a native collection type like `Map`:
  ```js
  const books = reactive([ref('Vue 3 Guide')])
  // need .value here
  console.log(books[0].value)

  const map = reactive(new Map([['count', ref(0)]]))
  // need .value here
  console.log(map.get('count').value)
  ```

- In templates

  Caveat when unwrapping in templates​:
  - Ref unwrapping in templates only applies if the ref is a top-level property in the template render context.
  - Another thing to note is that a ref does get unwrapped if it is the final evaluated value of a text interpolation (i.e. a `{{ }}` tag)

Isn't ref unwrapping a bad idea?
- Breaks type checking

Bypassing:
- [`toRaw()`](https://vuejs.org/api/reactivity-advanced.html#toraw)

## Store
- [Pinia | The intuitive store for Vue.js](https://pinia.vuejs.org/)

  [Defining a Store | Pinia](https://pinia.vuejs.org/core-concepts/)

  Breaks `shallowRef()` + `triggerRef()`?