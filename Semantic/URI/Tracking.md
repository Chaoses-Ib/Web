# Click Tracking
[Wikipedia](https://en.wikipedia.org/wiki/Click_tracking)

## Anti-tracking
- PWA cannot copy URL directly, though context menu still works
- Firefox
  - Copy Link Without Site Tracking
  - [1697982 - Firefox Tracking Protection should protect against URL/queryparam-based tracking (like ClearURLs/NeatURL addons do)](https://bugzilla.mozilla.org/show_bug.cgi?id=1697982)
    - [firefox.settings.services.mozilla.com/v1/buckets/main/collections/query-stripping/records](https://firefox.settings.services.mozilla.com/v1/buckets/main/collections/query-stripping/records)
- Ad blockers
  - uBlock Origin + `removeparam` static filter
- [ClearURLs: An add-on based on the new WebExtensions technology and will automatically remove tracking elements from URLs to help protect your privacy.](https://github.com/ClearURLs/Addon) ([Hacker News](https://news.ycombinator.com/item?id=27047243))
  - [gitlab.com/ClearURLs/rules/-/raw/master/data.min.json](https://gitlab.com/ClearURLs/rules/-/raw/master/data.min.json)
  - [Parameters not cleaned properly on Android Firefox when using YouTube share feature - Issue #340 - ClearURLs/Addon](https://github.com/ClearURLs/Addon/issues/340)
  - 50 MB memory usage

  [Google Removed ClearURLs Extension from Chrome Web Store | Hacker News](https://news.ycombinator.com/item?id=26564638)

Telegram:
- [GauthamramRavichandran/clearurls: A telegram bot based on ClearURLs extension.](https://github.com/GauthamramRavichandran/clearurls)
