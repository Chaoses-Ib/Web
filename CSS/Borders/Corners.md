# Corners
[CSS Backgrounds and Borders Module Level 3](https://drafts.csswg.org/css-backgrounds-3/#corners)

[CSS Borders and Box Decorations Module Level 4](https://drafts.csswg.org/css-borders-4/#corners)

## Corner sizing: [`border-radius`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-radius)
[border-radius | CSS-Tricks - CSS-Tricks](https://css-tricks.com/almanac/properties/b/border-radius/)

[CSS Border Radius Generator](https://border-radius.com/)

[Border Radius - Tailwind CSS](https://tailwindcss.com/docs/border-radius)

### Maximum
- 足够大的 radius 会让矩形变为圆角矩形，但 `50%`/`100%` 却会让矩形变为椭圆。

  [Suggestion - Update rounded-full from 9999px to 50% - Issue #1949 - tailwindlabs/tailwindcss](https://github.com/tailwindlabs/tailwindcss/issues/1949)

  而在其它 GUI 框架，比如 WPF 中，足够大的 radius 会让矩形变为椭圆。

- `50%`、`100%`、`50% 50% 50% 50%`、`100% 100% 100% 100%` 都是一样的，但 `100% 50% 50% 50%` 却和它们不一样。

  [html - What is the difference between border-radius 50% and 100%? - Stack Overflow](https://stackoverflow.com/questions/55410657/what-is-the-difference-between-border-radius-50-and-100)