# Positioned Layout
[CSS Positioned Layout Module Level 3](https://drafts.csswg.org/css-position-3/)

> The CSS layout algorithms, by default, size and position boxes in relation to each other so that nothing overlaps.
> 
> This specification defines several ways to violate these assumptions when needed, moving elements around in ways that can make them overlap other content:
> - [Relative positioning](https://drafts.csswg.org/css-position-3/#relative-position), which visually shifts a box relative to its laid-out location.
> 
> - [Sticky positioning](https://drafts.csswg.org/css-position-3/#sticky-position), which visually shifts a box relative to its laid-out location in order to keep it visible when a scrollable ancestor would otherwise scroll it out of sight.
> 
> - [Absolute positioning](https://drafts.csswg.org/css-position-3/#absolute-position), which ignores normal layout entirely, pulling the element [out of flow](https://drafts.csswg.org/css-display-4/#out-of-flow) and positioning it relative to its [containing block](https://drafts.csswg.org/css-display-4/#containing-block) with no regard for other content.
> 
> - [Fixed positioning](https://drafts.csswg.org/css-position-3/#fixed-position), which absolutely positions the box and affixes it to the viewport or page frame so that it is always visible.

[position - CSS: Cascading Style Sheets | MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/position)

## Sticky positioning
[Getting stuck: all the ways position:sticky can fail | Polypane](https://polypane.app/blog/getting-stuck-all-the-ways-position-sticky-can-fail/)

Multiple sticky elements:
- `top: 42px;`
  - [Multiple Sticky Position Sticky - StackBlitz](https://stackblitz.com/edit/multiple-sticky-position-sticky)
- [Multiple Sticky Elements](https://codepen.io/adamprince/pen/QWjJzNM)
- Vue
  - [vue-fixed-header: Simple and cross-browser friendly fixed header component for Vue.js written by TypeScript.](https://github.com/potato4d/vue-fixed-header)
  - [vue-sticky-element: a sticky component that will stick to screen when scrolled past it](https://github.com/jd1378/vue-sticky-element)

    > Hide navbar when scrolling down and show it when scrolling back up

[pure CSS multiple stacked position sticky? - Stack Overflow](https://stackoverflow.com/questions/54689034/pure-css-multiple-stacked-position-sticky)

### Fixed table headers
[Fixed Table Headers --- Adrian Roselli](https://adrianroselli.com/2020/01/fixed-table-headers.html)
```css
th {
  position: -webkit-sticky;
  position: sticky;
  top: 0;
  z-index: 2;
}

thead {
  position: sticky;
  top: 0;
  z-index: 2;
}
```

Cannot be used with `display: block`.

- [vh-sticky-table-header: Vertical and horizontal sticky table header. Framework agnostic.](https://github.com/archfz/vh-sticky-table-header)

[css - Freeze the top row for an html table only (Fixed Table Header Scrolling) - Stack Overflow](https://stackoverflow.com/questions/8423768/freeze-the-top-row-for-an-html-table-only-fixed-table-header-scrolling)

Border: [html - Border style do not work with sticky position element - Stack Overflow](https://stackoverflow.com/questions/50361698/border-style-do-not-work-with-sticky-position-element)
- `border-collapse: separate` + ...
- `box-shadow`
  ```css
  table tbody:nth-of-type(1) tr:nth-of-type(1) td {
    border-top: none !important;
  }

  table thead tr {
    border-top: none !important;
    border-bottom: none !important;
  }

  table thead th {
    border-top: none !important;
    border-bottom: none !important;
    box-shadow: inset 0 2px 0 #000000, inset 0 -2px 0 #000000;
    padding: 2px 0;  /* not necessary? */
  }

  /* and one small fix for weird FF behavior, described in https://stackoverflow.com/questions/7517127/ */
  table thead th {
    background-clip: padding-box
  }
  ```
