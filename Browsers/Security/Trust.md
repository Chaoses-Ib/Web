# Trusted Types
[MDN](https://developer.mozilla.org/en-US/docs/Web/API/Trusted_Types_API)

- Only on Chromium
- [TrustedHTML](https://developer.mozilla.org/en-US/docs/Web/API/TrustedHTML)

```js
if (window.trustedTypes && window.trustedTypes.createPolicy) {
  window.trustedTypes.createPolicy('default', {
    createHTML: (string, sink) => string,
    // createScriptURL: string => string,
    // createScript: string => string,
  });
}
```

Workarounds:
- [Always Disable Content-Security-Policy - Chrome Web Store](https://chromewebstore.google.com/detail/always-disable-content-se/ffelghdomoehpceihalcnbmnodohkibj?pli=1)
- Removing jQuery, if any

Userscripts:
- Tampermonkey: ~~[Required resources blocked by Trusted-Types CSP - Issue #1334 - Tampermonkey/tampermonkey](https://github.com/Tampermonkey/tampermonkey/issues/1334#event-5361683856)~~
  - [Trusted-Types Helper](https://greasyfork.org/en/scripts/433051-trusted-types-helper)
- Violentmonkey: [Circumvent TrustedHTML errors - Issue #1873 - violentmonkey/violentmonkey](https://github.com/violentmonkey/violentmonkey/issues/1873)

  If you are using Chromium-based browsers with Violentmonkey (rather than Tampermonkey), install [Trusted-Types Helper](https://greasyfork.org/en/scripts/433051-trusted-types-helper) too.

Used with CSP by:
- Google
  - YouTube

    2024-07 [Strengthening Security for Extensions on YouTube - YouTube Community](https://support.google.com/youtube/thread/287326123/strengthening-security-for-extensions-on-youtube?hl=en)

  [Please help. Javascript code failure in latest Chrome (TrustedHTML assignment)](https://greasyfork.org/en/discussions/development/253726-please-help-javascript-code-failure-in-latest-chrome-trustedhtml-assignment)
- Microsoft
  - [Copilot](https://copilot.microsoft.com/)

[google chrome - How to fix TrustedHTML assignment error with Angular \[innerHTML\] - Stack Overflow](https://stackoverflow.com/questions/62810553/how-to-fix-trustedhtml-assignment-error-with-angular-innerhtml)

[javascript - Problem loading external scripts like jQuery - Stack Overflow](https://stackoverflow.com/questions/77564335/problem-loading-external-scripts-like-jquery)

[\[userscript:\_qute\_js:1376\] This document requires 'TrustedHTML' assignment when visiting groups.google.com - Issue #7498 - qutebrowser/qutebrowser](https://github.com/qutebrowser/qutebrowser/issues/7498)
