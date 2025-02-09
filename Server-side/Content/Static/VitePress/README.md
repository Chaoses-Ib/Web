# [VitePress](https://vitepress.dev/)
[GitHub](https://github.com/vuejs/vitepress)

> Vite & Vue powered static site generator.

[Getting Started | VitePress](https://vitepress.dev/guide/getting-started)

[Deploy Your VitePress Site | VitePress](https://vitepress.dev/guide/deploy)

[Flowershow](https://web.archive.org/web/20240907061056/https://flowershow.app/notes/vitepress)

VS Code:
- [VitePress Preview: A very small extension which use VSCode builtin simple browser to preview VitePress pages.](https://github.com/0x-jerry/vscode-vitepress)

[MDX support - Issue #248 - vitejs/vite](https://github.com/vitejs/vite/issues/248)
> VitePress already supports treating plain markdown files as Vue SFCs, which allows using all Vue SFC features inside normal markdown, **and has much better optimization.** MDX transpiles markdown to JSX render functions, which is terribly inefficient (double payload cost + unnecessary hydration of static content) unless there are optimizations I am unaware of. In comparison, VitePress markdown processing with Vue 3 automatically strips all static parts of your markdown from the compiled JavaScript so there is no unnecessary JavaScript or hydration cost. I don't mean to belittle their work - it's useful for React users for sure, but MDX trying to support Vue is... a bit pointless.

## Performance
- Fast initial load
  
  > The initial visit to any page will be served the static, pre-rendered HTML for fast loading speed and optimal SEO. The page then loads a JavaScript bundle that turns the page into a Vue SPA ("hydration"). Contrary to common assumptions of SPA hydration being slow, this process is actually extremely fast thanks to Vue 3's raw performance and compiler optimizations. On [PageSpeed Insights](https://pagespeed.web.dev/report?url=https%3A%2F%2Fvitepress.dev%2F), typical VitePress sites achieve near-perfect performance scores even on low-end mobile devices with a slow network.

- Fast post-load navigation
  
  > More importantly, the SPA model leads to better user experience **after** the initial load. Subsequent navigation within the site will no longer cause a full page reload. Instead, the incoming page's content will be fetched and dynamically updated. VitePress also automatically pre-fetches page chunks for links that are within viewport. In most cases, post-load navigation will feel instant.

- Interactivity without penalty

  > To be able to hydrate the dynamic Vue parts embedded inside static Markdown, each Markdown page is processed as a Vue component and compiled into JavaScript. This may sound inefficient, but the Vue compiler is smart enough to separate the static and dynamic parts, minimizing both the hydration cost and payload size. For the initial page load, the static parts are automatically eliminated from the JavaScript payload and skipped during hydration.

[Image lazy loading](https://vitepress.dev/guide/markdown#image-lazy-loading) (disabled by default)

[Deploy Your VitePress Site | VitePress](https://vitepress.dev/guide/deploy)
- [HTTP Cache Headers](https://vitepress.dev/guide/deploy#http-cache-headers)

  `Cache-Control: max-age=31536000,immutable`

- Nginx

  ```nginx
  server {
      gzip on;
      gzip_types text/plain text/css application/json application/javascript text/xml application/xml application/xml+rss text/javascript;

      listen 80;
      server_name _;
      index index.html;

      location / {
          # content location
          root /app;

          # exact matches -> reverse clean urls -> folders -> not found
          try_files $uri $uri.html $uri/ =404;

          # non existent pages
          error_page 404 /404.html;

          # a folder without index.html raises 403 in this setup
          error_page 403 /404.html;

          # adjust caching headers
          # files in the assets folder have hashes filenames
          location ~* ^/assets/ {
              expires 1y;
              add_header Cache-Control "public, immutable";
          }
      }
  }
  ```

### [MPA Mode](https://vitepress.dev/guide/mpa-mode)
> In MPA mode, all pages are rendered without any JavaScript included by default. As a result, the production site will likely have a better initial visit performance score from audit tools.
> 
> However, due to the absence of SPA navigation, cross-page links will lead to full page reloads. Post-load navigations in MPA mode will not feel as instant as in SPA mode.

## Markdown
markdown-it

[Markdown Extensions | VitePress](https://vitepress.dev/guide/markdown):
- [Frontmatter](https://vitepress.dev/guide/frontmatter)
- [Custom containers](https://vitepress.dev/guide/markdown#custom-containers)
- [GitHub-flavored alerts](https://vitepress.dev/guide/markdown#github-flavored-alerts)
- [Line highlighting in code blocks](https://vitepress.dev/guide/markdown#line-highlighting-in-code-blocks)
- [Code groups](https://vitepress.dev/guide/markdown#code-groups)
- [Markdown file inclusion](https://vitepress.dev/guide/markdown#markdown-file-inclusion)

### Images
[Allow images to be zoomed in on click - Issue #854 - vuejs/vitepress](https://github.com/vuejs/vitepress/issues/854)
- [vitepress-plugin-image-viewer: A vitepress image viewer plugin based on viewerjs](https://github.com/T-miracle/vitepress-plugin-image-viewer)
  - `vImageViewer` is a button, `![]()` is an image
  - Missing dev dep: `npm install -D sass-embedded`
  - Cursor is not changed when hovering the image
  - Even [the blog of the auther himself](https://github.com/T-miracle/blog/blob/7f5abfbc28270563dc3d77481fa7bf855c7d95cf/package.json) is using the old version...?
  - [Image not showing if using vitepress-plugin-image-viewer - Issue #41 - lando/vitepress-theme-default-plus](https://github.com/lando/vitepress-theme-default-plus/issues/41)

  [VitePress Image Viewer Plugin: Implementing Seamless Zoom Functionality | Peter's Blog](https://www.shakecode.com/blog/other/vitepress-plugin-image-viewer)

- [vitepress-plugin-lightbox: Plugin for VitePress to add support for viewing images in a lightbox.](https://github.com/BadgerHobbs/vitepress-plugin-lightbox)
  - Can only zoom to 100%

  [Support for lightbox image galleries - Issue #3855 - vuejs/vitepress](https://github.com/vuejs/vitepress/issues/3855)

## Vue
[Using Vue in Markdown | VitePress](https://vitepress.dev/guide/using-vue)

[SSR Compatibility | VitePress](https://vitepress.dev/guide/ssr-compat)

[VS Code](https://vitepress.dev/guide/using-vue#vs-code-intellisense-support)
- Broken?

```vue
---
hello: world
---

<script setup>
import { ref } from 'vue'

const count = ref(0)
</script>

## Markdown Content

The count is: {{ count }}

<button :class="$style.button" @click="count++">Increment</button>

<style module>
.button {
  color: red;
  font-weight: bold;
}
</style>
```
- Avoid `<style scoped>` in Markdown

  > When used in Markdown, `<style scoped>` requires adding special attributes to every element on the current page, which will significantly bloat the page size. [`<style module>`](../../../../Client-side/Vue/Components/CSS.md#css-modules) is preferred when locally-scoped styling is needed in a page.

## [Routing](https://vitepress.dev/guide/routing)
- [Generating Clean URL](https://vitepress.dev/guide/routing#generating-clean-url)

  `example.com/path.html` → `example.com/path`

[Asset Handling | VitePress](https://vitepress.dev/guide/asset-handling)
- The `public` directory
  - Reference files placed in `public` using root absolute path
  - To enable file name hashing and cache control, don't put images only used by md/vue in `public`
- [Accessing Vite asset URLs in head config - Issue #3161](https://github.com/vuejs/vitepress/issues/3161)

[Sitemap Generation | VitePress](https://vitepress.dev/guide/sitemap-generation)

## [Internationalization](https://vitepress.dev/guide/i18n)

## Plugins
[T-miracle/vitepress-plugins: vitepress plugins. vitepress 插件](https://github.com/T-miracle/vitepress-plugins)