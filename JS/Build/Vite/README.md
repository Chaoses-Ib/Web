# [Vite](https://vitejs.dev/)
[GitHub](https://github.com/vitejs/vite), [Wikipedia](https://en.wikipedia.org/wiki/Vite_(software))

> Next Generation Frontend Tooling

[Static Asset Handling | Vite](https://vite.dev/guide/assets.html)
- [Documenting `__VITE_ASSET__` or exposing a function to build asset url. - Issue #13459 - vitejs/vite](https://github.com/vitejs/vite/issues/13459)

[Building for Production | Vite](https://vite.dev/guide/build.html)
- [Multi-Page App](https://vite.dev/guide/build.html#multi-page-app)
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
