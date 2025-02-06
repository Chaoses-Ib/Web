# Specificity
[Calculating a selector’s specificity](https://drafts.csswg.org/selectors-4/#specificity-rules)

Specificity for a selector:
```rust
(id_selectors.count(), class_attr_pesudo_class_selectors.count(), type_pseudo_element_selectors.count())
```
Repeated occurrences of the same simple selector are allowed and do increase specificity.

If the selector is a *selector list*, this number is calculated for each selector in the list. For a given matching process against the list, the specificity in effect is that of the most specific selector in the list that matches.

A few pseudo-classes provide "evaluation contexts" for other selectors, and so have their specificity defined specially:
- The specificity of an [:is()](https://drafts.csswg.org/selectors-4/#matches-pseudo), [:not()](https://drafts.csswg.org/selectors-4/#negation-pseudo), or [:has()](https://drafts.csswg.org/selectors-4/#has-pseudo) pseudo-class is replaced by the specificity of the most specific [complex selector](https://drafts.csswg.org/selectors-4/#complex) in its [selector list](https://drafts.csswg.org/selectors-4/#selector-list) argument.
- Analogously, the specificity of an [:nth-child()](https://drafts.csswg.org/selectors-4/#nth-child-pseudo) or [:nth-last-child()](https://drafts.csswg.org/selectors-4/#nth-last-child-pseudo) selector is the specificity of the pseudo-class itself (counting as one pseudo-class selector) plus the specificity of the most specific [complex selector](https://drafts.csswg.org/selectors-4/#complex) in its [selector list](https://drafts.csswg.org/selectors-4/#selector-list) argument (if any).
- The specificity of a [:where()](https://drafts.csswg.org/selectors-4/#where-pseudo) pseudo-class is replaced by zero.

Examples:
```css
*               /* a=0 b=0 c=0 */
LI              /* a=0 b=0 c=1 */
UL LI           /* a=0 b=0 c=2 */
UL OL+LI        /* a=0 b=0 c=3 */
H1 + *[REL=up]  /* a=0 b=1 c=1 */
UL OL LI.red    /* a=0 b=1 c=3 */
LI.red.level    /* a=0 b=2 c=1 */
#x34y           /* a=1 b=0 c=0 */
#s12:not(FOO)   /* a=1 b=0 c=1 */
.foo :is(.bar, #baz)
                /* a=1 b=1 c=0 */
```

A css rule with `!important` always takes precedence.

Rules that appear later in the code override earlier rules if both have the same specificity.

[html - What is the order of precedence for CSS? - Stack Overflow](https://stackoverflow.com/questions/25105736/what-is-the-order-of-precedence-for-css)

## Tools
- Chromium DevTools
