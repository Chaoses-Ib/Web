# [Vite](https://vitejs.dev/)
[GitHub](https://github.com/vitejs/vite), [Wikipedia](https://en.wikipedia.org/wiki/Vite_(software))

> Next Generation Frontend Tooling

[Static Asset Handling | Vite](https://vite.dev/guide/assets.html)
- [Documenting `__VITE_ASSET__` or exposing a function to build asset url. - Issue #13459 - vitejs/vite](https://github.com/vitejs/vite/issues/13459)

[Building for Production | Vite](https://vite.dev/guide/build.html)
- [Multi-Page App](#multi-page-app)
- [`build.manifest`](https://vite.dev/config/build-options.html#build-manifest)

  > When set to `true`, the build will also generate a `.vite/manifest.json` file that contains a mapping of non-hashed asset filenames to their hashed versions, which can then be used by a server framework to render the correct asset links. When the value is a string, it will be used as the manifest file name.

Deploying:
- [Deploying a Static Site | Vite](https://vite.dev/guide/static-deploy)
  - Just services, no any servers...
- Cache control
  
  [How do you deal with browser cache after re-deploying your web-app? : r/vuejs](https://www.reddit.com/r/vuejs/comments/dbdmtk/how_do_you_deal_with_browser_cache_after/)
  > In my router, I detect 404s for bundles and do a hard reload on the requested route to force a re-download of the index (and other resources).

  [What should I be caching when using NGINX in an SSR setup? : r/vuejs](https://www.reddit.com/r/vuejs/comments/9y1pj4/what_should_i_be_caching_when_using_nginx_in_an/)
  > I recommend not worrying so much about the NGINX caching, and instead making a good manifest. Let the browser cache all static files, and also play with implementing local storage.

[Env Variables and Modes | Vite](https://vite.dev/guide/env-and-mode)
- `import.meta.env`

Discussions:
- 2022-11 [What's the hype with Vite? : r/webdev](https://www.reddit.com/r/webdev/comments/z4rbe4/whats_the_hype_with_vite/)

## [Multi-Page App](https://vite.dev/guide/build.html#multi-page-app)
[SPA 与 MPA 的比较与优化 - Liu Bowen](https://set.sh/post/180804-spa-and-mpa)

- Doesn't work well with mixed-page app (multi pages with routers)
  
  `vite.config.ts`:
  ```ts
  plugins: [
    {
      name: 'rewrite-middleware',
      configureServer(serve) {
        serve.middlewares.use((req, res, next) => {
          // console.log(req.url)
          if (req.url?.startsWith('/nested/') && req.url?.indexOf('.') === -1) {
            req.url = '/nested/'
          }
          next()
        })
      }
    }
  ]
  ```
  [`transformIndexHtml` hook gets the wrong html filepath when running Multi-Page - Issue #2958 - vitejs/vite](https://github.com/vitejs/vite/issues/2958#issuecomment-1065810046)

  [Rewrite Vite Urls on dev server - Stack Overflow](https://stackoverflow.com/questions/76201101/rewrite-vite-urls-on-dev-server)

- `vite build` will only build the top page without adding other pages to `build.rollupOptions.input`

  [production - How do I get vite to build entire project instead of just the index.html page? - Stack Overflow](https://stackoverflow.com/questions/71544439/how-do-i-get-vite-to-build-entire-project-instead-of-just-the-index-html-page)

- vue-router: [base](../../../Client-side/Vue/Routing.md#base)

Plugins:
- [vite-plugin-mpa-plus: More flexible MPA (multipage application) supports html template](https://github.com/yzydeveloper/vite-plugin-mpa-plus)
- [vite-plugin-auto-mpa-html: A file directory-based automated multi-page build plugin that supports HTML templates using Handlebars. 基于文件目录的Vite自动化多页面构建插件，支持使用 Handlebars 的 HTML 模板。](https://github.com/iamspark1e/vite-plugin-auto-mpa-html)
- [vite-plugin-mpa: MPA(multi page application) for vite.](https://github.com/IndexXuan/vite-plugin-mpa)
  - [多页面嵌套，开发路由怎么跳转不到 - Issue #20](https://github.com/IndexXuan/vite-plugin-mpa/issues/20)
  - [TypeError: mpa is not a function - Issue #30](https://github.com/IndexXuan/vite-plugin-mpa/issues/30)

## Preprocessing
- [vite-plugin-compile-time: Some compile-time magic for your Vite project](https://github.com/egoist/vite-plugin-compile-time)
  - Top-level calls
  - Standalone `.compile.ts` files
- [unplugin-preprocessor-directives: preprocessor directives for jsx,tsx,js,ts,html,css,vue and more](https://github.com/KeJunMao/unplugin-preprocessor-directives)
  - [vite-plugin-conditional-compiler: Conditional compilation syntax based on environment variables for Vite. Vite 下基于环境变量的条件编译](https://github.com/KeJunMao/vite-plugin-conditional-compile)
- [LZS911/vite-plugin-conditional-compile](https://github.com/LZS911/vite-plugin-conditional-compile)
- [vite-plugin-externals: use to external resources](https://github.com/crcong/vite-plugin-externals)

## CSS
- [vite-plugin-theme-preprocessor: css theme preprocessor plugin for vite](https://github.com/GitOfZGT/vite-plugin-theme-preprocessor)
  - Implementing dynamic themes based on `Less` or `Sass`
- [vite-plugin-vars-modifier: A vite plugin for parse preprocessor file.](https://github.com/fanhaoyuan/vite-plugin-vars-modifier)
