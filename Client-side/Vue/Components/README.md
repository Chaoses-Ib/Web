# Components
## v-model
[Component v-model | Vue.js](https://vuejs.org/guide/components/v-model)

> The value returned by `defineModel()` is a ref. It can be accessed and mutated like any other ref, except that it acts as a two-way binding between a parent value and a local one:
> 
> - Its `.value` is synced with the value bound by the parent `v-model`;
> - When it is mutated by the child, it causes the parent bound value to be updated as well.