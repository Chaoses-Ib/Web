# [Docsify](https://docsify.js.org/)
[GitHub](https://github.com/docsifyjs/docsify/)

> Docsify generates your documentation website on the fly. Unlike GitBook, it does not generate static html files. Instead, it smartly loads and parses your Markdown files and displays them as a website. To start using it, all you need to do is create an `index.html` and [deploy it on GitHub Pages](https://docsify.js.org/#/deploy).

Buggy.

[docsify 5.0 roadmap - Issue #657 - docsifyjs/docsify](https://github.com/docsifyjs/docsify/issues/657)
- [\[NEXT\] Docsify v5 - Issue #1061 - docsifyjs/docsify](https://github.com/docsifyjs/docsify/issues/1061)
- [5.x Milestone](https://github.com/docsifyjs/docsify/milestone/2)

[From README to documentation site in 10 minutes](https://colinhacks.com/essays/docs-the-smart-way)

How about SEO?
- SSR

[docsifyjs/awesome-docsify: 💖 A curated list of awesome things related to docsify](https://github.com/docsifyjs/awesome-docsify)

## Markdown
- [Bug: Docsify's path handling is problematic (and broken in some scenarios) - Issue #1891 - docsifyjs/docsify](https://github.com/docsifyjs/docsify/issues/1891)
  - `relativePath: true` (buggy)
- [New Markdown Syntax: GitHub (or GitLab) Flavored Markdown - Issue #1165 - docsifyjs/docsify](https://github.com/docsifyjs/docsify/issues/1165)
- 表格块前必须有空行

## Sidebar
- Disabled by default.
- `loadSidebar: 'SUMMARY.md'`
- Nested sidebar is enabled by default.
  ```js
  alias: {
    '/.*/_sidebar.md': '/_sidebar.md'
  }
  ```
  ```js
  alias: {
    '/.*/SUMMARY.md': '/SUMMARY.md'
  }
  ```
- [Bug: Docsify's path handling is problematic (and broken in some scenarios) - Issue #1891 - docsifyjs/docsify](https://github.com/docsifyjs/docsify/issues/1891)
- No folding support.

## Plugins
[List of Plugins](https://docsify.js.org/#/plugins)

## Services
- [Docsify-This: A Lightweight Markdown Open Publishing Tool](https://docsify-this.net/)