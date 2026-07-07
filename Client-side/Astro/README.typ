#import "@local/ib:0.1.0": *
#title[#a[Astro][https://astro.build/]]
#a-badge[https://github.com/withastro/astro]

#a[We switched from Next.js to Astro (and why it might interest you) | Hacker News][https://news.ycombinator.com/item?id=42306742]

#a[The Joy of Mixing Custom Elements, Web Components, and Markdown | Hacker News][https://news.ycombinator.com/item?id=44865997]
#q[
I recently discovered a static site generator called Astro, which supports many syntaxes but the `.astro` is a nice mix of TypeScript and JSX-like syntax.
Content can use MDX which is like Markdown but with `{JSX}` style markup for variables and etc.
The static components are used very similar to React, with familiar import statements and ```html <ComponentName props=etc>``` patterns.
It is extremely easy to pick up. Best of all, it has plugins to support all sorts of other interactivity, so you can create interactive 'islands' of content using React or Preact or SolidJS or Vue etc.
That way you have most of your content statically generated, and then the dynamic parts can be done from the client side.

Best of all, if you use simple unchanged files for other dynamic stuff like JSON etc, you can just generate those on build and serve those files in the host directly as the 'response' to a simple REST request, which is sometimes overlooked despite being the most fundamental form of a REST API.

I came across this after researching various options for a website that had, mostly for my own entertainment, restrictions on wanting to be mostly statically generated but customizable easily without learning a lot of new syntax / etc, something JSX-like with Markdown support etc, and MDX was an immediate find - and astro was the easiest SSG I found for it after trying with 11ty and several others.
Actually felt like a delight playing with it.
]

#a[Static site generators like Astro are actually pretty complex for the problems they solve][https://jan.miksovsky.com/posts/2025/04-14-astro.html]

#a[Astro is a developers f\*\*\*ing dream --- Websmith Studio][https://websmith.studio/blog/astro-is-a-developers-dream/]
#a-badge[https://news.ycombinator.com/item?id=44507854]

#t[2601]
#a[Cloudflare acquires Astro | Hacker News][https://news.ycombinator.com/item?id=46646645]

#t[2208]
#a[如何评价最近新出现的前端框架 Astro？ - 知乎][https://www.zhihu.com/question/464084419/answer/2636500449]

#t[2506]
#a[Next.js 真的是越来越难用了，什么狗屁 use client，不如 Astro 一根，有什么话跟我的岛屿说去吧 - V2EX][https://v2ex.com/t/1141028]

= Versions
- #a[Astro 7.0][https://astro.build/blog/astro-7/]
  #a-badge[https://news.ycombinator.com/item?id=48821653]
  - Rust compiler by default.

= #a[Installation][https://docs.astro.build/en/install-and-setup]
- ```sh npm create astro@latest```
  - #a[`astro/examples`][https://github.com/withastro/astro/tree/main/examples]

= #a[Islands architecture][https://docs.astro.build/en/concepts/islands/]

= Compiler
#a[withastro/compiler: The Astro compiler. Written in Go. Distributed as WASM.][https://github.com/withastro/compiler]
- #a[withastro/compiler-rs: The Astro compiler][https://github.com/withastro/compiler-rs]

= Build
- #a[`build.assets`][https://docs.astro.build/en/reference/configuration-reference/#buildassets]
  defaults to `_astro` instead of `assets`.
  #footnote[#a[Move `/assets` folder to `/_astro` - Issue \#5745 - withastro/astro][https://github.com/withastro/astro/issues/5745]]
  #footnote[#a[javascript - Changing the name of the `_astro` dist folder - Stack Overflow][https://stackoverflow.com/questions/79049023/changing-the-name-of-the-astro-dist-folder]]

- Hot reload is buggy.

- #a[Sitemaps][https://docs.astro.build/en/guides/integrations-guide/sitemap/]
  - ```sh npx astro add sitemap```
  - No auto `lastmod`.
    #footnote[#a[Feature request: per-page lastmod from source metadata (git history / frontmatter) - withastro/roadmap - Discussion \#1370][https://github.com/withastro/roadmap/discussions/1370]]
  - #a[Sitemap Extensions | Inox Tools][https://inox-tools.fryuni.dev/sitemap-ext]

- #strike[
  #a[Build under symbol/junction-linked directories will cause CSS missing - Issue \#17319][https://github.com/withastro/astro/issues/17319]
  ]
