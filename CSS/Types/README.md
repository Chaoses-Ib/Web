# Types
[CSS values and units - Learn web development | MDN](https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/Values_and_units)

- Numeric value types
  - [`<integer>`](https://developer.mozilla.org/en-US/docs/Web/CSS/integer)
  - [`<number>`](https://developer.mozilla.org/en-US/docs/Web/CSS/number)
  - [`<dimension>`](https://developer.mozilla.org/en-US/docs/Web/CSS/dimension)
    - [`<length>`](https://developer.mozilla.org/en-US/docs/Web/CSS/length)`
    - [`<angle>`](https://developer.mozilla.org/en-US/docs/Web/CSS/angle)
    - [`<time>`](https://developer.mozilla.org/en-US/docs/Web/CSS/time)
    - [`<resolution>`](https://developer.mozilla.org/en-US/docs/Web/CSS/resolution)
  - [`<percentage>`](https://developer.mozilla.org/en-US/docs/Web/CSS/percentage)
- [`<color>`](color.md)
- [`<image>`](https://developer.mozilla.org/en-US/docs/Web/CSS/image)
- [`<position>`](https://developer.mozilla.org/en-US/docs/Web/CSS/position_value)
- Strings
- Identifiers
- Functions

## Length
[CSS: em, px, pt, cm, in…](https://www.w3.org/Style/Examples/007/units.en.html)

> The `px` unit is the magic unit of CSS. It is not related to the current font and usually not related to physical centimeters or inches either. The `px` unit is defined to be small but visible, and such that a horizontal 1px wide line can be displayed with sharp edges (no anti-aliasing). What is sharp, small and visible depends on the device and the way it is used: do you hold it close to your eyes, like a mobile phone, at arms length, like a computer monitor, or somewhere in between, like an e-book reader? The `px` is thus not defined as a constant length, but as something that depends on the type of device and its typical use.

> The `em` and `ex` units depend on the font and may be different for each element in the document. The `em` is simply the font size. In an element with a 2in font, 1em thus means 2in. Expressing sizes, such as margins and paddings, in `em` means they are related to the font size, and if the user has a big font (e.g., on a big screen) or a small font (e.g., on a handheld device), the sizes will be in proportion. Declarations such as `text-indent: 1.5em` and `margin: 1em` are extremely common in CSS.
