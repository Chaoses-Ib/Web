# [Svelte](https://svelte.dev/)
[GitHub](https://github.com/sveltejs/svelte)

[Svelte 5 Released | Hacker News](https://news.ycombinator.com/item?id=41889674)
> Svelte 5 is almost heaven, I thought. But it's full heaven.
> To keep it short: The Svelte team did a remarkable job improving every aspect but preseriving the characteristics and distinctive features (fast, small, easy, elegant).
> 
> Now, where I struggled (using Svelte 5 on a business logic heavy SPA since RC in April):
> 
> Signal in general are extremly easy to use, but quite hard to track. You have to "know" or "find out" if something is reactive. Vue makes it easy with their .value API, but also not 100% foolproof.
> 
> With React: Everything is a value. Unidirectional data flows. It's very easy to follow the flow of the data.
> 
> With Angular: Data pipelines are built using RxJS. Hard to learn, but extremely powerful. You can follow the data flow quite well. Not as easy as with React, but once you are good with RxJS, still easy enough.
> 
> With Svelte 5: Runes look like values. This mental model is good enough most of the time. It's especially great in small contexts where you exactly know where your variable comes from or where everything is reactive. But Runes also behave like signals and proxies. So, you sometimes need to know exactly what is in your bag. Is it a value? A signal ($state with value or $state.raw with object or array)? A proxy ($state with array or object)? In larger contexts it gets really hard to track.
> 
> Why is Svelte still full heaven to me: Runes are the basic building blocks. They are the common basic toolkit. I don't have to use them in large business logic areas of my apps. I can create (nominal typed, using TS of course) custom wrapper classes, e.g. to only allow signals, not proxies. This wrapper classes disallow mutation. Passing those around makes it type safe. If I see a value, it is a value. If I see a type of my reactive wrapper class, it is reactive. Or, I can use RxJS and Svelte 5.

> No, react came first. And Vue is not the same. Vue 3 added reactivity via refs (which are essentially signals by today's terminology). They can be used outside of components, like Svelte's runes. Svelte 5 is very similar to Vue 3. So much so I jokingly called it "svuelte" when they first announced it.  
> Vue gets unfairly overlooked imo. I worked with it for 12 months and it was mostly a joy
>
> Looking at the docs, Svelte is a mix of React and Vue, IMO.  
> They reverted from the `on` syntax while adding in signals like Vue's `ref`. The way the props pass down is more akin to React than Vue, but the overall reactivity system feels the same as Vue.
> 
> I'm not sure I'd pick it over either Vue or React.

> I've recently moved from Svelte (initially 4, then 5) to Vue 3, and much prefer it.  
> The big issue for me was the lack of support for nested observables in Svelte, which caused no end of trouble; plus a lack of portals (though maybe the new snippets fix that?).

> Why should someone use Svelte 5 over Vue 3?  
> Performance might be the only reason IMO, but once Vue Vapor is release that will most likely not be an advantage.
> 
> The Vue3 and Svelte 5 API are almost the exact same, but Vue can be used in TS/JS and Svelte 5 can't.
> 
> I do think SvelteKit is better than Nuxt by a lot. Maybe that's a big advantage.