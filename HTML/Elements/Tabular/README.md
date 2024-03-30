# Tabular Data
[HTML Standard](https://html.spec.whatwg.org/multipage/tables.html)

## `<table>`
[MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/table)

Content model:
```antlr
table: caption? colgroup* thead? (tbody* | tr+) tfoot?
thead: tr*
tbody: tr*
tfoot: tr*
tr: (td | th)*
```

[html - What is benefit of <thead> - Stack Overflow](https://stackoverflow.com/questions/2700379/what-is-benefit-of-thead)
> The `thead`, `tbody`, and `tfoot` elements in HTML are used to group table rows into logical sections based on their content. There are two main reasons you'd want to do this:
> 1. To allow the body to be scrolled independently of the header and/or footer
> 2. To make it easier to apply different style rules to the different sections of the table.