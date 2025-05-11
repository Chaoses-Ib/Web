# Client-side Web Frameworks
[Wikipedia](https://en.wikipedia.org/wiki/Web_framework#Client-side)

[Introduction to client-side frameworks - Learn web development | MDN](https://developer.mozilla.org/en-US/docs/Learn/Tools_and_testing/Client-side_JavaScript_frameworks/Introduction)

## Frameworks
- [React](React/README.md)
- [Vue](Vue/README.md)
- Angular
- [Svelte](Svelte/README.md)
- [Solid](Solid/README.md)
- Ember

[Front-end frameworks popularity (React, Vue, Angular and Svelte)](https://gist.github.com/tkrotoff/b1caa4c3a185629299ec234d2314e190)

[2023 State of JavaScript Survey Highlights: Vite Dominates, TypeScript Adoption Soars - Socket](https://socket.dev/blog/2023-state-of-javascript-survey-highlights)

[krausest/js-framework-benchmark: A comparison of the performance of a few popular javascript frameworks](https://github.com/krausest/js-framework-benchmark)

[JavaScript frameworks market share, websites and contacts - Wappalyzer](https://www.wappalyzer.com/technologies/javascript-frameworks/)

[React JS VS VueJS - JavaScript Technologies Market Share Comparison](https://www.similartech.com/compare/react-js-vs-vuejs)

History:
- 2020-12 [为什么感觉 Vue 的组件相对于 React 来说很少呢？ - V2EX](https://www.v2ex.com/t/733509)
- 2023-04 [用React就比Vue更高级吗？聊聊React和Vue有哪些不同 - 力扣（LeetCode）](https://ssg.leetcode.cn/circle/discuss/NgvHr1/)
- 2024-04 [程序员想开发漂亮的个人网站是不是用 react 会比 vue 简单一些？ - V2EX](https://s.v2ex.com/t/1034782)
- 2024-05 [用 vue 比较久了，还有必要去学习 react 吗？ - V2EX](https://cn.v2ex.com/t/1045352)

### [你为什么选择React而不选择Vue？ - Snowflyt的回答 - 知乎](https://www.zhihu.com/question/294210442/answer/3453828000)
> 很老的问题了，2024 年我站在自己的角度谈谈看法吧。（废话警告）
> 
> 不算很久之前（大概是 2020-2021 年），当我初次在大学中接触前端领域时，周围的人都说想进大厂就学 React，并且互联网上也到处都是解析 React 函数式思想的文章------当时 React Hooks 推出才一两年，仍有大量项目基于 class component，而 Hooks 带来的更"纯粹"的"函数式编程"思想，在当时显得颇为独特与深奥。
> 
> 显然，这只是前端娱乐圈现状的又一个缩影，在那会儿是"Everyone's talking about React Hooks and Functional Programming"，前两年是"Everyone's talking about signals"，今年又是"Everyone's talking about Drizzle ORM, shadcn/ui, Bun, etc.". 前端是我见过最有活力的社区，每天都热衷于造个全新的 next-gen game changing library------在许多人眼中，这看上去颇有些滑稽，我却不觉得这是什么坏事，这意味着更多人在"having fun"，而不仅仅是"coding for living"，这对社区的发展总是良性的。
> 
> 话说回来。当时的 React 用户大多有种隐隐的*优越感*，毕竟自己在用一个更灵活和更加"功能强大"的框架，且 React 被认为"需要更好的基础才能驾驭"（事实的确如此，至少相比起 Vue 2，但究竟是不是好事就没人知道了），在做同一件事上也有非常多不同的选择，无论是路由、状态管理还是其他什么（相比之下，Vue 团队则把这些常见需求所需的库都一起开发了），挑得人眼花缭乱，UI 组件库也有远多于 Vue 和 Angular 的选择。
> 
> React 用户的"高傲"一定程度上是有依据的------这很大程度上要归功于 React 自身的**流行度**。无论你是否接受，React 实际上已经"代表"了 UI 框架（当然，"框架"这个词到底适不适合形容 React 有待考量，但咱们现在也找不到一个更好的词来形容 React、Vue、Angular、Svelte、Solid 这些东西），并且这些年里也成为了欧美前端开发的事实标准。这种"到处都是 React"的流行度是一旦接触英文前端社区就能扑面而来感受到的事情，大概习惯在 Google 上常年拿英文搜问题的人没几个会反驳。
> 
> 如果你关注那些与 UI 框架相关的新轮子，它们几乎无一例外都优先考虑支持 React（像是 Tanstack 全家桶），甚至限于某个特定的 React 元框架（如 NextAuth.js，如今它成为了 Auth.js），然后它们才考虑逐渐从一个"React 特定"的库变成适用于各个 UI 框架的通用库。这种流行度的确为 React 带来了无与伦比的"**繁荣**"生态------自然也带来了它们质量参差不齐的问题，庞大的数量总是带来更难控制的质量，这并不令人意外。
> 
> React 的流行大概是许多偶然因素共同造成的，如今哪个因素发挥了最主要的作用或许已经不得而知了。自然，React 的流行也造成了组件库的多样性，一个国内几乎没什么声音但在英文社区具有相当知名度的新兴组件库 shadcn/ui 就是个 React 组件库，并且大概只考虑官方支持 React，连 Preact 也不打算支持（尽管社区显然可以并且已经开发了针对不同 UI 框架如 Svelte 和 Vue 的非官方 Port）。shadcn/ui 的大体思路是它不作为一个"真正的组件库"，而是提供一个代码生成器，帮助你把组件代码复制到你的项目里，同时绑定 Tailwind CSS. 这种生成的组件提供了高度自定义性------其实不算个很新鲜的思路，但对于快速开发项目相当好用，可以认为是 Tailwind CSS 思路上的进一步扩展，在组件的灵活性和易用性上达成了一个神奇的平衡。
> 
> 谈到 shadcn/ui 其实只是想举个更具体的例子说明 React 在事实上的流行导致许多新尝试与新技术都优先从 React 开始------其实一个这样的库是很适合一开始就作为通用组件库而不是作为 React-only 组件库开发的（尽管事实上存在不少适用于其他 UI 框架的 Unofficial port）。很大程度上，React 已经成为了一种"**惯性**"，而各种库尝试兼容其他 UI 框架以变成一个"framework-agnostic"的库在某种程度上可能变成了一种"正确"或者纯粹出于造轮子的喜好------如果一个组件库（当然也包括其他非组件库）支持同时包括 React 在内的多个 UI 框架，那你最好不要期待它在其他 UI 框架上的表现，大概率是处于缺胳膊少腿并且没几个人提交 BUG 的状态------支持得好是惊喜，支持不好是常态。
> 
> 这种"**React 惯性**"真的是正确的吗？前端圈向来很擅长"反思"什么已有的流行的东西并推出一个又一个 next-gen lib 成为"game changer"，React 这边也不例外。
> 
> 一个批评在于 React Hooks 需要手动传入 deps 带来的**样板代码**问题------React 社区甚至开发了 ESLint 插件来提示你在 deps 中把所有依赖手动加上，可既然 ESLint 都能告诉我要在 deps 中写什么东西，为什么 React 自己不能把依赖给我自动加上？这个问题在过去似乎非常 Trivial------因为 `useState` 或其他同类东西拿到的是一个值，在运行时代码中直接跟踪一个值以实现响应性是不可能的，至少得需要个编译器才能完成这项跟踪工作。理所当然的，后来人们发觉让编译器完成这项工作不是唯一的解决方案，也可以干脆换一种写法，与其直接使用值，不如使用一个 Getter，而 Getter 自然就可以在运行时直接被跟踪以实现响应性，而不需要编译器参与，无论 Vue 的 `.value` 还是 Solid 直接返回 Getter 的做法都只是这种想法的一个实现，这被称为 **Signals**------这其实也只是新瓶装旧酒，Vue 3 一开始就是这个思路，可 Signals 这个说法要到前两年才炒起来。
> 
> React 的另一个问题在于组件的**生命周期**初看起来并不那么直观------在 React 中（至少 Hooks 之后），组件 (`Component`) 只是一个返回组件实例 (`Element`) 的工厂函数，函数式组件每次渲染时都会从头到尾跑一遍以得到新元素，而不是直觉上的"函数式组件是定义组件的代码，仅在创建实例时运行一次以初始化"------事实上后来 Solid 就是这么做的。这也导致了很多新手一不留神就往组件定义里塞了一些耗时操作导致性能问题，并且也导致创建高性能 React 组件需要时刻留意耗时操作并用 `useMemo` 之类的东西将它们惰性化，这导致了更严重的样板代码问题。
> 
> 还有其他同类的像需要手动 `memo` 的问题，也一直以来被诟病为"React 创造的问题"。也有一些较小的点，比如传递 `ref` 的复杂性。有时人们会半开玩笑地说"React 先故意把框架做得很烂，然后引入一些小改进解决这些本就不该存在的问题让大家感觉 React 团队又实现了什么巨大进步"------说实话我越来越觉得真是这么回事。
> 
> 抛开写法上的缺陷，再谈谈一个避不开的的问题------**生态**。React 显然是前端 UI 框架中生态最"繁荣"的一个，这一方面要归功于 React 自身的流行度，另一方面则要归功于 React 团队仅做核心而不参与周边生态开发的做法。这导致 React 生态中仅状态管理和路由两块就有数不清的社区实现，状态管理更是难绷到让 Redux 这么个完全不好用的库统治了许多年------直到以一种不能更简单的方式实现的 Zustand 流行起来大家才发现原来 Redux 这么难用不是因为 React 状态管理本就复杂（在很长一段时间以来这还是个具备统治力的观点），而只是因为 Redux 过度封装把事情搞得太过复杂。
> 
> 自然的，也产生了许多观点为 React 辩护，以解释"为什么 React 这么烂大公司还是选择它"。我记得前几年有个说法被很多人提及------大公司需要对页面每一次渲染细粒度控制，并且宁愿投入更多人力在这种"开手动档"的事情上，而不是依赖于框架自动管理渲染时机，React 就提供了这种灵活性。这可能（值得怀疑地）部分解释了大公司们采用 React 的原因，但没有解释为什么如今数之不清的小公司仍优先选择 React.
> 
> 在我的观点中这更多还是源于一种**历史惯性**，并且 React 还没有比其他 UI 框架"明显糟糕"到不能接受的程度，因此大多数公司没有换掉 React 想法，而这造就了 React 生态的继续繁荣------和国内公司习惯于跟着阿里用 MyBatis 比较类似，大公司用什么我就跟着用，只是因为前面的人帮我把坑趟过了，有比较齐全的周边配套代码和大厂退下来熟悉这套技术的员工，小公司没必要选择自己用国内环境里不常用的生态，也是图一个安稳。
> 
> 在开头，我反复强调了 React 生态有多繁荣，似乎在吹 React，刚才又批评了 React 的一些问题，似乎把它贬得一无是处------其实我只是相对客观地评论着 React，也许带了些主观偏见，但大体应当并不偏激。那么 React 难道没有优点吗？显然也不是的。
> 
> 不可否认的是，React 的确为前端带来了一些"新"的东西。在 Hooks 之前，"函数式编程"这个如今被说烂了的概念在大多数前端人眼里还只是个"可望而不可及"的东西，它从象牙塔中带来了一些似乎有用的东西，但若你想从一些"先行者"那里了解些更多的东西，则会被他们张口就是 Monad 的热情劝退------或许他们也不是想故意把别人劝退，只是已经习惯了这些外人看来可能颇为晦涩的概念。React 以一种在现在许多人看来颇有些半吊子的方式，将函数式编程的一些基本概念以颇有些炒作的形式带到了大众的眼中（得益于 React 自身的流行度，不管官方是不是有意炒作，React 发布任何一个新功能后总是会看起来像是炒作了一番）------许多人第一次认识到，原来在代码里几乎全用 `const` 和只用 Immutable 对象也可以很好地开发应用，区分副作用也可以很好地控制难以预测事件的发生。这些对"函数式编程"的普及或许太过浅显到以至于让许多人觉得"不达本质"而不屑一顾，但至少起到了很不错的引导作用，让许多人第一次知道还存在另一种写代码的方式。
> 
> React 这个每次渲染都跑一遍组件定义函数的做法也不是只有坏处。这其实很大程度上让 Hooks 的封装变得简单和透明了，除了 `useState` 那几个有限的内置 Hooks，自己封装 Hooks 其实没太多额外的黑魔法在里头，就只是简单的把一段代码替换成一个函数以方便复用，仅此而已。这也带来了其他许多事情的简单性，如子组件只需通过一个没有任何 Magic 的 `.children` 就可以直接传递，而 Solid 和 Vue 等都需要额外的手段（`children` helper function 或 `<slot>`）来高效处理子组件的传递问题。React 的 `props` 也不存在解构丢失响应性的问题------每次渲染时组件都会重跑一遍，会有新的不同的值传进来。某种意义上，React 的这个看似别扭的做法维持了一种统一的简单性和一致性，使框架没有在背后做太多难以预测的"魔法"------这又回到了那个老生常谈的问题，框架在背后做了太多工作到底是简化了用户的心智负担还是实质上反而加重了心智负担？框架要做到什么程度才能达到这种心智负担的平衡？这就是个没有答案的见仁见智的问题了。
> 
> 然后要谈到 React 的另一个特点------JSX，或者说特定于 React 的 JSX. React 在 JSX 上的做法基本就是直接将其一比一与运行时代码替换，编译器在其中只做了一些简单的工作------相比之下，Vue、Svelte 等基于模板方案的 UI 框架则大量依赖编译器实现较复杂的转换工作，尤其是在处理响应性上，而 Solid 尽管使用了 JSX，其编译器仍旧在背后做了不少工作，而不是像 React JSX 基本上只做代码替换。React 这种处理 JSX 的方案其实天生使其和 TS 有很不错的相性，并且带来了 React 最被广泛认同的特性------灵活性。
> 
> 如果你用过一些 React 组件库，会发现其中不少地方允许你直接传入一个 React Element（也就是一个 JSX 元素）作为参数，例如典型的传递 `<XxxIcon />`. 在模板语法下这则是个不那么容易的事情，因此我们通常在 Vue 中传递组件 (Component) 而非元素 (Element)。对于 React 中的 `<Button icon={<XxxIcon />}>` 在 Vue 中的同类写法常常是 `<Button :icon="XxxIcon">`，其中传入组件而非元素------假如这里我们需要传入 `<Icon icon="carbon:home" />` 这样的元素，Vue 这边就要复杂一些，变成了 `<Button :icon="defineComponent({ render: () => h(Icon, { icon: 'carbon:home' }) })">`，为了避免这种难绷的语法，在大多数地方其实我们会使用 Slot 以及 Named slot 替代，基于模板的思路大多有这个问题。除此之外，模板也使 Vue 需要引入 `<component is>` 来解决在 JSX 不存在的问题。当然，这些都不是 Vue 的问题，只是模板的局限性，Vue 用 JSX 一样可以按我说的 React 组件库的那种思路写，Element Plus 的一些新组件就是这个思路。
> 
> 模板显然也有自己的优点，很难说 JSX 和模板谁更优越。模板允许框架塞进更多自己提供的语法糖，在很大程度上也能使代码变得更加简洁，同时也使编译器优化变得更容易------对于组件库开发等场景来说，它可能稍微少了点灵活性，但对于应用开发已经足够优秀，并没有比 JSX 缺少什么。就我个人而言，我是更倾向于 JSX 的语法的，更方便在一个文件里封装多个小组件，但我对模板也没什么恶感。
> 
> 还有个对多数人可能没什么感知，但对我而言感知明显的模板的问题------对 TS 的支持问题。平心而论，Vue 3.4 之后对 TS 基本上已经达到了完全的支持，但在一些边界的类型体操推导上仍存在一些问题，而且估摸着也很难在未来的版本中去支持，比如 `defineProps` 对条件类型的支持问题。 我在 VSCode 使用 Volar（现在叫 Vue - Official）插件时也经常遇到 TS 抽风问题，并且 ESLint 在 Vue SFC 中对 TS 的解析常常出问题，如开启 `@typescript-eslint/recommended-type-check` 后经常在 SFC 中给我解析出 `any`，但 Volar 却能正常提示类型，我暂时没寻思出来这是 vue-eslint-parser 本来就有的问题还是我哪边配置不对，或者是 Volar 的问题。并且我始终不知道该如何让 Vue 在模板里给未知 tag 的 element 报错而不是推导为 unknown------vue-eslint-plugin 有这个选项，但不支持全局组件，对我来说确实没法用。
> 
> 基于模板的 UI 框架大多有这个缺点------对于开发来说，它们对 TS 的支持通常限于大致能用而不太考虑优先支持复杂类型体操的解析。Vue 在 TS 支持方面其实已经做得很不错了，Svelte 用过几次，那边对 TS 的支持可以说就完全是"凑合能用"水平了。而 JSX 由于 TS 的内置支持则在类型安全上具有更好的表现，这个优点也是客观存在的。
> 
> 说了这么多 React，并且似乎有些跑偏了，再回头谈谈 Vue. 要谈 Vue，显然要从 Vue 2 的 **Options API** 谈起。我至今仍觉得 Options API 有不少可取之处，最大的一点就是其极低的入门门槛和极其直观的语法------对于简单的业务页面开发，Options API 很少需要担心解构和丢失响应性的问题，一切都绑定在 `this` 上，默认更新 `this` 上的数据就能看到响应性的变化，心智负担其实是很低的。当然，`this` 经常因其迷惑特性而被诟病，以至于现在新库开发都不那么倾向于使用 class，但这不是个很难解决的问题，只需要把原先 `{ ... }` 形式的组件定义改成 `component((self) => ({ ... }))` 就可以解决了------以一个作为参数传入的 `self` 替代 `this`.
> 
> Options API 对 TS 其实也有不错的兼容性，即使使用 Vue 2.6，也可以安装 `@vue/composition-api` 在组件定义外边包上 `defineComponent` 以获得 `this` 上的类型提示。同时 Options API 也提供了一个最低限度的约束，`data`、Lifecycle、`computed`、`methods` 等必须分门别类放好写在一起，不允许杂七杂八东写一块西写一块------这种强制将可能在功能上相关的 `data`、`computed`、`methods` 拆分开来的做法可能在老手看来不那么理想，但至少强硬地避免新手将功能和逻辑上都毫无关联的部分胡乱摆放在一起，而这很大程度上也是 React 新手的普遍问题。我很相信 Options API 这些或许是"无意之间"保证代码维持了最低限度整洁性（易读性）和易上手特性（心智负担较低）的特点使 Vue 在 Vue 2 时代于国内被大量使用，并且直到今天大量国内项目还是没有要升级到 Vue 3 的意思，甚至新项目仍用 Vue 2------平心而论，Vue 3 确实不会给这其中很多新项目带来好处，自然也没有升级的必要。
> 
> Options API 到底有没有问题，Composition API 是否真的优于 Options API，推出 Vue 3 又到底是不是个正确的决定已经很难说个对错了。总之某一天 Vue 3 确实推出了，站在维护者的角度来说这很容易理解------大多数爱好造轮子的程序员看到多年前的屎山代码总是想做一次彻底的推倒重构的，而甚至还兼容着 IE 并采用了许多老 JS 特性的 Vue 2 在可维护性上显然已经遇到了不小的困难，其设计时未考虑到 TS 也使后续要做不少[可能难度不大但工作量很大的类型体操](https://github.com/vuejs/core/blob/44b95276f5c086e1d88fa3c686a5f39eb5bb7821/packages/runtime-core/src/componentPublicInstance.ts#L132-L165)来为 Options API 提供类型支持。既然都要推倒重来了，为什么不引入点新的东西？React Hooks 那一套东西不一定说真比 Options API 好，但对 TS 肯定是更友好的，并且看起来没比 Options API 有明显弱点，也能更灵活地组织代码------Composition API 就这么诞生了。
> 
> 自 Vue 3 以来，Composition API 至少一定程度上带来了**社区的繁荣**------相比起 Mixin，Hooks 具有更简洁灵活的语法，并且在更容易避免冲突覆盖问题，这至少**提高了库开发者的体验**。而 vue-use 这样的项目要是没有 Composition API 也很难出现------Vue 2 中在功能上的扩展更多依赖于 Global methods，这种在全局对象上绑定太多东西的做法显然不够理想。在 Vue 2 生态中显然是很难出现一个质量和规模类似于 vue-use 的代码库的。
> 
> 有一个流行许久的观点，即 Composition API 更适合大型项目，而 Options API 在中小型项目上可能有一定优势（Vue 3 的文档里也这么说，当然他们到底是不是真这么觉得就不得而知了）。这其实是个比较值得怀疑的论点，毕竟 Composition API 其实也很适合小项目，而 Vue 2 时期使用 Options API 构建的大项目也比比皆是。
> 
> Composition API 在提高了灵活性的同时没有很好保证代码质量的下限，因此引起了一些诟病，但对于习惯良好的程序员来说即使在小项目上可能也比起 Options API 编写更直观和易读的代码------在 Composition API 里可以随手拆个 Hook 出来，在 Options API 里难道会有人习惯于随手拆个 Mixin 吗？
> 
> 可从另一个角度来说，Composition API 带来的能够更好按业务逻辑来组织代码的灵活性真的那么必要吗？如果组件粒度拆得够细，Options API 按功能分组的思路似乎也不坏，而 Composition API 提供的灵活性反而让人有些无所适从。而 Composition API 能随手拆个 Hook 出来的能力似乎也不那么有吸引力，我相信有许多人在真正写业务时是不经常拆 Hook 出来的，但只要代码规整地分块摆在一起也并不影响可维护性------在这种情况下，少数几个 Mixin 是否也已经够用？Mixin 得继承树要在多复杂的应用中才会看到可维护性的显著下降？
> 
> 以前看过 Ruby on Rails 的纪录片，其中有个观点让我印象深刻------当一个技术流行起来后，人们总是开始讨论它能不能 **Scale**，又能 Scale 到何种程度，但大多数人一辈子也碰不到这项技术 Scale 的瓶颈，并且在真遇到 Scale 问题之前采用这项技术的小公司就已经 IPO 了。这里也同样如此，无论说是"Vue 相比于 React 更不适合大项目"还是说"Options API 相比于 Composition API 更不适合大项目"，都近乎源于一种其实没太大根据的刻板印象。
> 
> 其实 Options API 在"人体工学"上是提供了比较不错的"幸福度"的------在我的观点里一是减少导入，二是敲 `this.` 就可以获得当前组件内全部关联数据和方法补全。说真的，"能提供更多补全可能"的设计在人体工程学上其实很重要，至少我是宁愿敲更多字也希望获得更好的补全体验的------而且 Vue 3 中 `ref` 的 `.value` 相比起 `this` 还没让人少敲字，这其实是引起了不少人的诟病的。
> 
> ------好吧，对 Options API 和 Composition API 的偏题讨论就到此为止，再讨论下去大概也是得不出什么结果的。不过至少从现状来看，大家对 Vue 3 的接受度还不错，生态也在渐渐繁荣。在我的角度来看，这要很大程度归功于 Nuxt------Nuxt 目前对于复杂应用在成熟度上比起 Next.js 还有不少问题，但对于相对静态的公司/项目主页、发布页等应该算是我用过的元框架里 DX 最好的选择了。其实目前有不少大网站都是由 Nuxt 构建的，大家有兴趣可以浏览器装个 Vue Devtools 看下。
> 
> 然后谈谈组件库的问题。国内和国外的组件库设计思路其实是很不一样的，国内的组件库通常是大而全，将你用得上的用不上的各种功能都封装进去，用起来就会比较省事，会发觉似乎什么场景都能直接用组件库提供的功能应付得来；国外的组件库相对来说更鼓励你造轮子，倾向于只封装基本组件并保留它们的灵活性，以便你自己进一步将它们更好地组成新的组件。其实我觉得国内的这个思路是要优于国外这些组件库的，只是由于审美不同，欧美更倾向于选用符合 Material 风格的缺胳膊少腿组件库，可能压根就没体验过使用国内这些大而全组件库开发的快乐感......例如国内组件库内置 Searchable MultiSelect 可以说就是标配，但诡异的是欧美常用的组件库里内置这东西的据我观察还还真不多。
> 
> 如今看来，React 和 Vue 其实都有不少还不错的组件库选择，倒也很难说 Vue 这边的组件库生态不行了。如果倾向于大而全，React 选 AntD，Vue 选 Element Plus 应该没什么异议。其他的或许我可以举几个符合我个人审美和用起来不错的组件库说说，React 这边一个是 MUI，这组件库说实话设计得不咋好用但在欧美基本上有着和国内 AntD 类似的流行度，另外一些是 Chakra、Mantine 和近期的 shadcn/ui. Vue 这边，我个人除开 Element Plus 会比较倾向于 Naive UI 或 PrimeVue，另外 Material Design 的 Vue 组件库也有不少，但我不太喜欢这个设计所以就不提了。原题目描述中 Vue 组件库选择太少的问题大概已经不太明显了，并且现在基于 Tailwind CSS 的各种定制方案也挺流行的，手搓组件也没那么麻烦了，现在还有了 shadcn/ui 在各种框架上的版本，复制粘贴组件代码也并不麻烦。
> 
> 回归问题本身吧。假如现在叫我做一个新项目，我大概还是会出于惯性选择 React------Vue 并没有什么不好，但我在 React 上着实有一些历史代码积累，对这边的生态也相对熟悉一些，并且用 React 整花活和对 TS 的兼容性上都要比 Vue 略微好上一些。但假如是做团队项目，出于对团队中其他人技术栈熟悉程度的考虑，我大概还是更倾向于 Vue------如果合作者都只会 Vue，我也不好叫人来现学 React.
> 
> 说起来，其实选择 React 很多时候成了一种"潜意识"的做法------当你不管看到什么新轮子都拿如何在一个 React 应用中使用它作为示例，其实自然而然会遵照这种惯例，在没有特别理由的情况下默认选择 React------但仔细想想，又好像确实没有一定要选 React 的理由。并且尽管 React 在许多方面受到批评，但它本身没有比起其他 UI 框架有什么根本性的劣势，自然也没什么换掉它的理由------就像开头就反复提及的，这种庞大的生态和历史惯性大概已经决定了 React 在今日以及未来难以撼动的地位了，无论你对此是否抱有反感。很大程度上，这也是我习惯于使用 React 的理由。
> 
> 至于其他 UI 框架，说真的 Svelte 和 Solid 那些还很不成熟，能用的组件库很少，基本上只有 Flowbite 这种基于 Tailwind CSS 的"跨框架"组件库兜底，在细致程度和易用性上都很难与专门为某一框架开发的组件库相提并论。除非只是做做那种偏海报展示的项目或者你真有足够耐心去手搓组件库，否则我是不建议在真是项目中上这些新兴框架的。嗯，还有被遗忘的 Angular------这我是真不熟，没法评价。
> 
> 说来说去，最后还是写成了没啥参考价值的随感吐槽，那就到此为止吧。

## Tools
Dependency detection:
- [Wappalyzer: Find out what websites are built with](https://www.wappalyzer.com/)
- [BuiltWith Technology Lookup](https://builtwith.com/)
- [Netcraft: What's that site running?](https://sitereport.netcraft.com/)
- [WhatRuns: Discover What Runs a Website](https://www.whatruns.com/)

  [Whatruns: Identify technologies used on any website | Hacker News](https://news.ycombinator.com/item?id=15098028)