# Extensions
## Storage
[MDN](https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/API/storage)

- [`storage.local`](https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/API/storage/local)
- [`storage.managed`](https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/API/storage/managed)

  > Items in `managed` storage are set by the domain administrator and are read-only for the extension. Trying to modify this namespace results in an error.
- [`storage.session`](https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/API/storage/session)
- [`storage.sync`](https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/API/storage/sync)

Tools:
- DevTools/Application/Extension storage

## Sync
- [`storage.sync`](https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/API/storage/sync)
  - Max total size: 100 KiB
  - Max item size: 8 KiB
    - Edge: 1 MiB
  - Max items: 512
  - Not supported: Firefox for Android, Safari, Opera

- [→Userscripts](Userscripts/README.md#sync)

- `chrome.storage.local.get(console.log)` + `chrome.storage.local.set(...)`

- DevTools/Application/Extension storage

[javascript - How can I sync localStorage across Chrome instances (or use chrome.storage.sync without a published extension)? - Stack Overflow](https://stackoverflow.com/questions/29567879/how-can-i-sync-localstorage-across-chrome-instances-or-use-chrome-storage-sync)

Extensions that don't sync:
- OneTab, better-onetab
- Duplicate Tabs Closer
- Wayback Machine
- ...
