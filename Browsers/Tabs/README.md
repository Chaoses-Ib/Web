# Tabs
[有什么能让人用得顺手的浏览器浏览进程管理 - 问题求助❓ - 小众软件官方论坛](https://meta.appinn.net/t/topic/39735)

[Rename Tab 重命名浏览器标签页标题 - 发现频道 🔎 - 小众软件官方论坛](https://meta.appinn.net/t/topic/24942)

## Managing tabs
- [Sessionic: A web extension to save, manage and restore sessions, windows and tabs.](https://github.com/navorite/sessionic) ([Hacker News](https://news.ycombinator.com/item?id=37887184))
  - Window and tab count
  - No warning when opening thousands of tabs
  - Bad for browser performance: many `index.html` views

## Saving tabs
- [OneTab extension for Google Chrome and Firefox - save up to 95% memory and reduce tab clutter](https://www.one-tab.com/)
  - Saving/restoring is very slow if saved tabs are too many (thousands)
  - Local storage
    - [backupOneTab: Back up and restore your OneTab Chrome extension data](https://github.com/joshuachough/backupOneTab)
    - [onetab-export-to-json: 🔖 Export URLs directly from OneTab's LevelDB database to JSON](https://github.com/jianyuan/onetab-export-to-json)

  ```json
  {
    "tabGroups": [
      {
        "id": "h2HihelV4pPD3uCth5qUWb",
        "tabsMeta": [
          {
            "id": "8uTCo6WYdrFV-BmuZmbujB",
            "url": "https://www.example.com/",
            "title": "Example Domain"
          }
        ],
        "createDate": 1733885560154
      }
    ]
  }
  ```

- [better-onetab: :bookmark\_tabs: A better OneTab for Chrome Temporarily removed from firefox V2 is WIP](https://github.com/cnwangjie/better-onetab) (discontinued)
  - Export to JSON
  - Search
  - Local storage
  - Vue 2
  - ~~[Poor UI performance with a large number of lists and tabs 列表较多时UI性能严重下降 - Issue #55](https://github.com/cnwangjie/better-onetab/issues/55)~~
  
    ~~[BOT (BetterOneTab ;-) ) is extremely slow when many links/groups are stored - Issue #78](https://github.com/cnwangjie/better-onetab/issues/78)~~

  ```json
  [
    {
      "tabs": [
        {
          "title": "Example Domain",
          "url": "https://www.example.com/",

          // Optional
          "favIconUrl": "https://www.example.com/favicon.ico",
          "muted": false,
          "pinned": false
        }
      ],
      "title": "",
      "time": 1733885560154
    }
  ]
  ```
  From OneTab: `"tabsMeta"` → `"tabs"`, `"createDate"` → `"time"`

  Forks:
  - [giraudvalentin/better-onetab: :bookmark\_tabs: better-onetab fork because project is not supported anymore and I need more features :)](https://github.com/giraudvalentin/better-onetab)
  - [structunit/better-onetab: :bookmark\_tabs: A better OneTab for Chrome (Temporarily removed from firefox & without maintain in a period & any cooperative purpose are welcome)](https://github.com/structunit/better-onetab)
  - [AmmRage/better-one-tab-2024: :bookmark\_tabs: A better OneTab for Chrome Temporarily removed from firefox V2 is WIP](https://github.com/AmmRage/better-one-tab-2024)
  - [anthonyheckmann/better-onetab: :bookmark\_tabs: A better OneTab for Chrome Temporarily removed from firefox V2 is WIP](https://github.com/anthonyheckmann/better-onetab)

- [onetab.group: This repo just to collect user feedback.](https://github.com/one-tab-group/onetab.group)

- [Tablist - Chrome Web Store](https://chromewebstore.google.com/detail/tablist/eagbohciligljbgpbdbflaloangiodhe) ([Hacker News](https://news.ycombinator.com/item?id=22841708))

  > I don't understand why a simple export of the list of current tabs open is not a basic, built-in feature of the browser. I am not asking for management or storage or export or sharing ... or anything interesting at all. I should just be able to go to: `chrome://tabs` (or whatever) and see a text list of tab URLs. All browsers should have this functionality.

  > I don't understand a lot of things about browsers, including why they don't log/persist caches of the full content of all history (for full text search at the minimum), why they still send user-agent headers, why they persist all cookies for all domains by default, et c. It's making me rather cynical, because I'd like to think that browsers are user agents, but I think these days they're just advertising company agents that happen to run on users' computers.

- [Tabli - Chrome Web Store](https://chromewebstore.google.com/detail/tabli/igeehkedfibbnhbfponhjjplpkeomghi)

- `chrome://inspect/#pages`

## Reusing tabs
- [Duplicate Tabs Closer - Chrome 应用商店](https://chromewebstore.google.com/detail/duplicate-tabs-closer/gnmdbogfankgjepgglmmfmbnimcmcjle)
  - Laggy
  - URL matching options
- [Clutter Free - Prevent duplicate tabs - Chrome 应用商店](https://chromewebstore.google.com/detail/clutter-free-prevent-dupl/iipjdmnoigaobkamfhnojmglcdbnfaaf)
  - Laggy
  - Slow on cold start, especially with many tabs
  - Defaults to keep new instead of existing tab
  - URL matching options
  - Open tab count
  - Tab Search
  - Right-click menu
- [Reuse Tabs: A Browser Extension - Appfluence Priority Matrix](https://appfluence.com/reuse-tabs-a-browser-extension/)
  - Laggy
- [如何实现chrome只能打开一个新标签页 - 问题求助❓ - 小众软件官方论坛](https://meta.appinn.net/t/topic/38312)
  - [Only One NewTab: Only one new-tab can alive.](https://github.com/LightAPIs/only-one-newtab)
- [Is there a way to reuse existing tab instead of opening a new tab if the url is same? : r/ArcBrowser](https://www.reddit.com/r/ArcBrowser/comments/16boxam/is_there_a_way_to_reuse_existing_tab_instead_of/)

[Open URL's in MS Edge and reuse the same tab - Stack Overflow](https://stackoverflow.com/questions/72168254/open-urls-in-ms-edge-and-reuse-the-same-tab)

[xTab: Limit the maximum number of tabs that can be open at the same time.](https://chromewebstore.google.com/detail/xtab/amddgdnlkmohapieeekfknakgdnpbleb?hl=en)

## API
- Extensions: [chrome.tabs](https://developer.chrome.com/docs/extensions/reference/api/tabs)

  `Tab`:
  - `favIconUrl`