# Vrtiual
## DOM
N/A

## CSS
[WICG/display-locking: A repository for the Display Locking spec](https://github.com/WICG/display-locking)
- [content-visibility: Motivation & background](https://github.com/WICG/display-locking/blob/main/explainers/content-visibility.md#motivation--background)

[WICG/virtual-scroller: A built-in virtual scroller for the web platform](https://github.com/WICG/virtual-scroller)

[\[css-scrollbars\]\[proposal\] Add support for attaching native scrollbars to an element - Issue #3397 - w3c/csswg-drafts](https://github.com/w3c/csswg-drafts/issues/3397)

[Proposal: a native solution for virtual scrolling - Issue #791 - WICG/webcomponents](https://github.com/WICG/webcomponents/issues/791)

[\[scroll-customization-api\] is there still interest/ongoing discussions for scroll customization? - Issue #1118 - w3c/css-houdini-drafts](https://github.com/w3c/css-houdini-drafts/issues/1118)

## JS
> Previously, we intended to specify a traditional approach to virtualization for the built-in virtual scroller. With that approach, the element would map JavaScript values (“items”) to DOM element children, putting only a small portion of the items in the DOM, with callbacks for creating, updating, and recycling the DOM elements given an item.
> 
> However, this approach suffers the same problem as existing traditionally-virtualized scrollers regarding accessibility, find-in-page, fragment URL and focus navigation, etc., all of which depend on having the content be part of the DOM to work correctly. This is a known issue with traditional virtualization, which web developers have to grapple with today, trading off these functionalities with the performance improvement. As we intend for the built-in virtual scroller to be a standard building block that a lot of web authors would use or build on, we don’t want to continue having this disadvantage.
>
> In other words, given the problem of too much DOM causing bad performance, traditional virtualization is managing the symptoms, by decreasing the amount of DOM. For a standard solution, we want to tackle the core problem head-on.

### Libraries
- [TanStack/virtual: 🤖 Headless UI for Virtualizing Large Element Lists in JS/TS, React, Solid, Vue and Svelte](https://github.com/TanStack/virtual)
- [inokawa/virtua: A zero-config, fast and small (~3kB) virtual list (and grid) component for React, Vue, Solid and Svelte.](https://github.com/inokawa/virtua)
- [vitalif/dynamic-virtual-scroll: Render-agnostic Dynamic Virtual Scroll Driver for JS](https://github.com/vitalif/dynamic-virtual-scroll) (discontinued)

React:
- [react-virtualized: React components for efficiently rendering large lists and tabular data](https://github.com/bvaughn/react-virtualized)
  - Collection, Grid, List, Masonry, Table