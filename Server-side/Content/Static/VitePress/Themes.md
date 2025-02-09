## Themes
[Using a Custom Theme | VitePress](https://vitepress.dev/guide/custom-theme)

[Last Updated | VitePress](https://vitepress.dev/reference/default-theme-last-updated)
> You need to commit the markdown file to see the updated time.

## Layout
[vitepress/src/client/theme-default/Layout.vue](https://github.com/vuejs/vitepress/blob/163c1f2477a84d3f79c496c9860768d4751337b7/src/client/theme-default/Layout.vue)

- `VPNavBar`
  ```css
  .VPNavBar {
    height: var(--vp-nav-height);
  }
  ```
  - `VPNav`
    ```css
    @media (min-width: 960px) {
      .VPNav {
        position: fixed;
      }
    }
    ```

- `VPLocalNav`
  ```css
  @media (min-width: 960px) {
    .VPLocalNav {
      top: var(--vp-nav-height);
    }

    .VPLocalNav.has-sidebar {
      padding-left: var(--vp-sidebar-width);
    }

    .VPLocalNav.empty {
      display: none;
    }
  }

  @media (min-width: 960px) {
    .menu {
      display: none;
    }
  }

  @media (min-width: 1280px) {
    .VPLocalNav {
      display: none;
    }
  }
  ```

- `VPNavBar` has a height var, but `VPLocalNav` doesn't
  ```css
  thead {
    top: 48px;
  }

  @media (min-width: 960px) {
    thead {
      top: calc(var(--vp-nav-height) + 48px);
    }
  }

  @media (min-width: 1280px) {
    thead {
      top: var(--vp-nav-height);
    }
  }
  ```

- `VPSidebar`

- [Doc](https://vitepress.dev/reference/default-theme-layout#doc-layout)

- [Home Page](https://vitepress.dev/reference/default-theme-home-page)

  How to customize the home page layout?

  `vitepress/src/client/theme-default/`: [Layout](https://github.com/vuejs/vitepress/blob/163c1f2477a84d3f79c496c9860768d4751337b7/src/client/theme-default/Layout.vue)
  - [VPHome](https://github.com/vuejs/vitepress/blob/163c1f2477a84d3f79c496c9860768d4751337b7/src/client/theme-default/components/VPHome.vue)
    - [VPHomeFeatures](https://github.com/vuejs/vitepress/blob/163c1f2477a84d3f79c496c9860768d4751337b7/src/client/theme-default/components/VPHomeFeatures.vue)
      - [VPFeatures](https://github.com/vuejs/vitepress/blob/163c1f2477a84d3f79c496c9860768d4751337b7/src/client/theme-default/components/VPFeatures.vue)
        - [VPFeature](https://github.com/vuejs/vitepress/blob/163c1f2477a84d3f79c496c9860768d4751337b7/src/client/theme-default/components/VPFeature.vue)

          Inline icon: `title: "<img src='icon.svg' class='feature-icon'/> Title"`

      [refactor(index): vendor VPFeatures (#10) - 16Hexa/hap-website](https://github.com/16Hexa/hap-website/commit/7d3b88500480ccbaca0fecc6fe9260115dfda174)

- `VPFooter`
