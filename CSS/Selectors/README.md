# Selectors
[MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_selectors)

[Selectors Level 4](https://drafts.csswg.org/selectors-4/)

> A **selector** is a boolean predicate that takes an element in a tree structure and tests whether the element matches the selector or not.

Selector:
- Simple selector
- Compound selector: A sequence of simple selectors that are *not separated by a combinator*
  - Pseudo-compound selector: A *pseudo-element* selector, optionally followed by additional *pseudo-class* selectors, and optionally preceded by a compound selector or another pseudo-compound selector, without any combinators
- Complex selector: A sequence of one or more compound selectors and/or pseudo-compound selectors, with compound selectors separated by *combinators*
- Selector list: A *comma*-separated list of simple, compound, or complex selectors

[CSS selector structure - CSS: Cascading Style Sheets | MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_selectors/Selector_structure)

[CSS selectors and combinators - CSS: Cascading Style Sheets | MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_selectors/Selectors_and_combinators)

## [Overview](https://drafts.csswg.org/selectors-4/#overview)
[Basic CSS selectors - Learn web development | MDN](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Styling_basics/Basic_selectors)

<!-- https://github.com/w3c/csswg-drafts/blob/main/selectors-4/Overview.bs
\[\[(.*?)\]\]
<a href="https://drafts.csswg.org/selectors-4/$1">$1</a> -->

The following table summarizes the Selector syntax:

<table class="data" id="selector-examples">
  <col class="pattern">
  <col class="meaning">
  <col class="section">
  <col class="level">
  <thead>
    <tr>
      <th>Pattern
      <th>Represents
      <th>Section
      <th>Level
  <tbody>
    <tr>
      <td><code>*</code>
      <td>any element
      <td><a href="https://drafts.csswg.org/selectors-4/#the-universal-selector">the-universal-selector</a>
      <td>2
    <tr>
      <td><code>E</code>
      <td>an element of type E
      <td><a href="https://drafts.csswg.org/selectors-4/#type-selectors">type-selectors</a>
      <td>1
  <tbody>
    <tr>
      <td><code>E:not(<var>s1</var>, <var>s2</var>, &hellip;)</code>
      <td>an E element that does not match either <a>compound selector</a> <var>s1</var>
          or <a>compound selector</a> <var>s2</var>
      <td><a href="https://drafts.csswg.org/selectors-4/#negation">negation</a>
      <td>3/4
    <tr>
      <td><code>E:is(<var>s1</var>, <var>s2</var>, &hellip;)</code>
      <td>an E element that matches <a>compound selector</a> <var>s1</var>
          and/or <a>compound selector</a> <var>s2</var>
      <td><a href="https://drafts.csswg.org/selectors-4/#matches">matches</a>
      <td>4
    <tr>
      <td><code>E:where(<var>s1</var>, <var>s2</var>, &hellip;)</code>
      <td>an E element that matches <a>compound selector</a> <var>s1</var>
          and/or <a>compound selector</a> <var>s2</var> but contributes no specificity.
      <td><a href="https://drafts.csswg.org/selectors-4/#zero-matches">zero-matches</a>
      <td>4
    <tr>
      <td><code>E:has(<var>rs1</var>, <var>rs2</var>, &hellip;)</code>
      <td>an E element,
        if there exists an element that matches
        either of the <a>relative selectors</a> <var>rs1</var> or <var>rs2</var>,
        when evaluated with E as the <a>anchor elements</a>
      <td><a href="https://drafts.csswg.org/selectors-4/#relational">relational</a>
      <td>4
  <tbody>
    <tr>
      <td><code>E.warning</code>
      <td>an E element belonging to the class <code>warning</code>
          (the document language specifies how class is determined).
      <td><a href="https://drafts.csswg.org/selectors-4/#class-html">class-html</a>
      <td>1
    <tr>
      <td><code>E#myid</code>
      <td>an E element with ID equal to <code>myid</code>.
      <td><a href="https://drafts.csswg.org/selectors-4/#id-selectors">id-selectors</a>
      <td>1
    <tr>
      <td><code>E[foo]</code>
      <td>an E element with a <code>foo</code> attribute
      <td><a href="https://drafts.csswg.org/selectors-4/#attribute-representation">attribute-representation</a>
      <td>2
    <tr>
      <td><code>E[foo="bar"]</code>
      <td>an E element whose <code>foo</code> attribute value is
          exactly equal to <code>bar</code>
      <td><a href="https://drafts.csswg.org/selectors-4/#attribute-representation">attribute-representation</a>
      <td>2
    <tr>
      <td><code>E[foo="bar" i]</code>
      <td>an E element whose <code>foo</code> attribute value is
          exactly equal to any (ASCII-range) case-permutation of <code>bar</code>
      <td><a href="https://drafts.csswg.org/selectors-4/#attribute-case">attribute-case</a>
      <td>4
    <tr>
      <td><code>E[foo="bar" s]</code>
      <td>an E element whose <code>foo</code> attribute value is
          [=identical to=] <code>bar</code>
      <td><a href="https://drafts.csswg.org/selectors-4/#attribute-case">attribute-case</a>
      <td>4
    <tr>
      <td><code>E[foo~="bar"]</code>
      <td>an E element whose <code>foo</code> attribute value is
          a list of whitespace-separated values, one of which is
          exactly equal to <code>bar</code>
      <td><a href="https://drafts.csswg.org/selectors-4/#attribute-representation">attribute-representation</a>
      <td>2
    <tr>
      <td><code>E[foo^="bar"]</code>
      <td>an E element whose <code>foo</code> attribute value
          begins exactly with the string <code>bar</code>
      <td><a href="https://drafts.csswg.org/selectors-4/#attribute-substrings">attribute-substrings</a>
      <td>3
    <tr>
      <td><code>E[foo$="bar"]</code>
      <td>an E element whose <code>foo</code> attribute value
          ends exactly with the string <code>bar</code>
      <td><a href="https://drafts.csswg.org/selectors-4/#attribute-substrings">attribute-substrings</a>
      <td>3
    <tr>
      <td><code>E[foo*="bar"]</code>
      <td>an E element whose <code>foo</code> attribute value
          contains the substring <code>bar</code>
      <td><a href="https://drafts.csswg.org/selectors-4/#attribute-substrings">attribute-substrings</a>
      <td>3
    <tr>
      <td><code>E[foo|="en"]</code>
      <td>an E element whose <code>foo</code> attribute value is
          a hyphen-separated list of values beginning with <code>en</code>
      <td><a href="https://drafts.csswg.org/selectors-4/#attribute-representation">attribute-representation</a>
      <td>2
  <tbody>
    <tr>
      <td><code>E:dir(ltr)</code>
      <td>an element of type E with left-to-right directionality
        (the document language specifies how directionality is determined)
      <td><a href="https://drafts.csswg.org/selectors-4/#the-dir-pseudo">the-dir-pseudo</a>
      <td>4
    <tr>
      <td><code>E:lang(zh, "*-hant")</code>
      <td>an element of type E tagged as being either in Chinese
        (any dialect or writing system)
        or otherwise written with traditional Chinese characters
      <td><a href="https://drafts.csswg.org/selectors-4/#the-lang-pseudo">the-lang-pseudo</a>
      <td>2/4
  <tbody>
    <tr>
      <td><code>E:any-link</code>
      <td>an E element being the source anchor of a hyperlink
      <td><a href="https://drafts.csswg.org/selectors-4/#the-any-link-pseudo">the-any-link-pseudo</a>
      <td>4
    <tr>
      <td><code>E:link</code>
      <td>an E element being the source anchor of a hyperlink
          of which the target is not yet visited
      <td><a href="https://drafts.csswg.org/selectors-4/#link">link</a>
      <td>1
    <tr>
      <td><code>E:visited</code>
      <td>an E element being the source anchor of a hyperlink
          of which the target is already visited
      <td><a href="https://drafts.csswg.org/selectors-4/#link">link</a>
      <td>1
    <tr>
      <td><code>E:local-link</code>
      <td>an E element being the source anchor of a hyperlink
        targeting the current URL
      <td><a href="https://drafts.csswg.org/selectors-4/#the-local-link-pseudo">the-local-link-pseudo</a>
      <td>4
    <tr>
      <td><code>E:target</code>
      <td>an E element being the target of the current URL
      <td><a href="https://drafts.csswg.org/selectors-4/#the-target-pseudo">the-target-pseudo</a>
      <td>3
    <tr>
      <td><code>E:target-within</code>
      <td>an E element that is the target of the current URL or contains an element that does.
      <td><a href="https://drafts.csswg.org/selectors-4/#the-target-within-pseudo">the-target-within-pseudo</a>
      <td>4
    <tr>
      <td><code>E:scope</code>
      <td>an E element being a [=scoping root=]
      <td><a href="https://drafts.csswg.org/selectors-4/#the-scope-pseudo">the-scope-pseudo</a>
      <td>4
  <tbody>
    <tr>
      <td><code>E:current</code>
      <td>an E element that is currently presented in a time-dimensional canvas
      <td><a href="https://drafts.csswg.org/selectors-4/#the-current-pseudo">the-current-pseudo</a>
      <td>4
    <tr>
      <td><code>E:current(<var>s</var>)</code>
      <td>an E element that is the deepest '':current'' element that
          matches selector <var>s</var>
      <td><a href="https://drafts.csswg.org/selectors-4/#the-current-pseudo">the-current-pseudo</a>
      <td>4
    <tr>
      <td><code>E:past</code>
      <td>an E element that is in the past in a time-dimensional canvas
      <td><a href="https://drafts.csswg.org/selectors-4/#the-past-pseudo">the-past-pseudo</a>
      <td>4
    <tr>
      <td><code>E:future</code>
      <td>an E element that is in the future in a time-dimensional canvas
      <td><a href="https://drafts.csswg.org/selectors-4/#the-future-pseudo">the-future-pseudo</a>
      <td>4
  <tbody>
    <tr>
      <td><code>E:active</code>
      <td>an E element that is in an activated state
      <td><a href="https://drafts.csswg.org/selectors-4/#the-active-pseudo">the-active-pseudo</a>
      <td>1
    <tr>
      <td><code>E:hover</code>
      <td>an E element that is under the cursor,
        or that has a descendant under the cursor
      <td><a href="https://drafts.csswg.org/selectors-4/#the-hover-pseudo">the-hover-pseudo</a>
      <td>2
    <tr>
      <td><code>E:focus</code>
      <td>an E element that has user input focus
      <td><a href="https://drafts.csswg.org/selectors-4/#the-focus-pseudo">the-focus-pseudo</a>
      <td>2
    <tr>
      <td><code>E:focus-within</code>
      <td>an E element that has user input focus or contains an element that has input focus.
      <td><a href="https://drafts.csswg.org/selectors-4/#the-focus-within-pseudo">the-focus-within-pseudo</a>
      <td>4
    <tr>
      <td><code>E:focus-visible</code>
      <td>an E element that has user input focus,
        and the UA has determined that a focus ring or other indicator
        should be drawn for that element
      <td><a href="https://drafts.csswg.org/selectors-4/#the-focus-visible-pseudo">the-focus-visible-pseudo</a>
      <td>4
  <tbody>
    <tr>
      <td><code>E:enabled<br>E:disabled</code>
      <td>a user interface element E that is enabled or disabled, respectively
      <td><a href="https://drafts.csswg.org/selectors-4/#enableddisabled">enableddisabled</a>
      <td>3
    <tr>
      <td><code>E:read-write</code><br><code>E:read-only</code>
      <td>a user interface element E that is user alterable, or not
      <td><a href="https://drafts.csswg.org/selectors-4/#rw-pseudos">rw-pseudos</a>
      <td>3-UI/4
    <tr>
      <td><code>E:placeholder-shown</code>
      <td>an input control currently showing placeholder text
      <td><a href="https://drafts.csswg.org/selectors-4/#placeholder">placeholder</a>
      <td>3-UI/4
    <tr>
      <td><code>E:default</code>
      <td>a user interface element E that is the default item in a group of related choices
      <td><a href="https://drafts.csswg.org/selectors-4/#the-default-pseudo">the-default-pseudo</a>
      <td>3-UI/4
    <tr>
      <td><code>E:checked</code>
      <td>a user interface element E that is checked/selected
        (for instance a radio-button or checkbox)
      <td><a href="https://drafts.csswg.org/selectors-4/#checked">checked</a>
      <td>3
    <tr>
      <td><code>E:indeterminate</code>
      <td>a user interface element E that is in an indeterminate state
          (neither checked nor unchecked)
      <td><a href="https://drafts.csswg.org/selectors-4/#indeterminate">indeterminate</a>
      <td>4
    <tr>
      <td><code>E:valid</code><br><code>E:invalid</code>
      <td>a user-input element E that meets, or doesn't, its data validity semantics
      <td><a href="https://drafts.csswg.org/selectors-4/#validity-pseudos">validity-pseudos</a>
      <td>3-UI/4
    <tr>
      <td><code>E:in-range</code><br><code>E:out-of-range</code>
      <td>a user-input element E whose value is in-range/out-of-range
      <td><a href="https://drafts.csswg.org/selectors-4/#range-pseudos">range-pseudos</a>
      <td>3-UI/4
    <tr>
      <td><code>E:required</code><br><code>E:optional</code>
      <td>a user-input element E that requires/does not require input
      <td><a href="https://drafts.csswg.org/selectors-4/#opt-pseudos">opt-pseudos</a>
      <td>3-UI/4
    <tr>
      <td><code>E:blank</code>
      <td>a user-input element E whose value is blank (empty/missing)
      <td><a href="https://drafts.csswg.org/selectors-4/#blank">blank</a>
      <td>4
    <tr>
      <td><code>E:user-invalid</code>
      <td>a user-altered user-input element E with incorrect input (invalid, out-of-range, omitted-but-required)
      <td><a href="https://drafts.csswg.org/selectors-4/#user-pseudos">user-pseudos</a>
      <td>4
  <tbody>
    <tr>
      <td><code>E:root</code>
      <td>an E element, root of the document
      <td><a href="https://drafts.csswg.org/selectors-4/#the-root-pseudo">the-root-pseudo</a>
      <td>3
    <tr>
      <td><code>E:empty</code>
      <td>an E element that has no children (neither elements nor text) except perhaps white space
      <td><a href="https://drafts.csswg.org/selectors-4/#the-empty-pseudo">the-empty-pseudo</a>
      <td>3
    <tr>
      <td><code>E:nth-child(<var>n</var> [of <var>S</var>]?)</code>
      <td>an E element, the <var>n</var>-th child of its parent matching <var>S</var>
      <td><a href="https://drafts.csswg.org/selectors-4/#the-nth-child-pseudo">the-nth-child-pseudo</a>
      <td>3/4
    <tr>
      <td><code>E:nth-last-child(<var>n</var> [of <var>S</var>]?)</code>
      <td>an E element, the <var>n</var>-th child of its parent matching <var>S</var>,
          counting from the last one
      <td><a href="https://drafts.csswg.org/selectors-4/#the-nth-last-child-pseudo">the-nth-last-child-pseudo</a>
      <td>3/4
    <tr>
      <td><code>E:first-child</code>
      <td>an E element, first child of its parent
      <td><a href="https://drafts.csswg.org/selectors-4/#the-first-child-pseudo">the-first-child-pseudo</a>
      <td>2
    <tr>
      <td><code>E:last-child</code>
      <td>an E element, last child of its parent
      <td><a href="https://drafts.csswg.org/selectors-4/#the-last-child-pseudo">the-last-child-pseudo</a>
      <td>3
    <tr>
      <td><code>E:only-child</code>
      <td>an E element, only child of its parent
      <td><a href="https://drafts.csswg.org/selectors-4/#the-only-child-pseudo">the-only-child-pseudo</a>
      <td>3
    <tr>
      <td><code>E:nth-of-type(<var>n</var>)</code>
      <td>an E element, the <var>n</var>-th sibling of its type
      <td><a href="https://drafts.csswg.org/selectors-4/#the-nth-of-type-pseudo">the-nth-of-type-pseudo</a>
      <td>3
    <tr>
      <td><code>E:nth-last-of-type(<var>n</var>)</code>
      <td>an E element, the <var>n</var>-th sibling of its type,
          counting from the last one
      <td><a href="https://drafts.csswg.org/selectors-4/#the-nth-last-of-type-pseudo">the-nth-last-of-type-pseudo</a>
      <td>3
    <tr>
      <td><code>E:first-of-type</code>
      <td>an E element, first sibling of its type
      <td><a href="https://drafts.csswg.org/selectors-4/#the-first-of-type-pseudo">the-first-of-type-pseudo</a>
      <td>3
    <tr>
      <td><code>E:last-of-type</code>
      <td>an E element, last sibling of its type
      <td><a href="https://drafts.csswg.org/selectors-4/#the-last-of-type-pseudo">the-last-of-type-pseudo</a>
      <td>3
    <tr>
      <td><code>E:only-of-type</code>
      <td>an E element, only sibling of its type
      <td><a href="https://drafts.csswg.org/selectors-4/#the-only-of-type-pseudo">the-only-of-type-pseudo</a>
      <td>3
  <tbody>
    <tr>
      <td><code>E F</code>
      <td>an F element descendant of an E element
      <td><a href="https://drafts.csswg.org/selectors-4/#descendant-combinators">descendant-combinators</a>
      <td>1
    <tr>
      <td><code>E > F</code>
      <td>an F element child of an E element
      <td><a href="https://drafts.csswg.org/selectors-4/#child-combinators">child-combinators</a>
      <td>2
    <tr>
      <td><code>E + F</code>
      <td>an F element immediately preceded by an E element
      <td><a href="https://drafts.csswg.org/selectors-4/#adjacent-sibling-combinators">adjacent-sibling-combinators</a>
      <td>2
    <tr>
      <td><code>E ~ F</code>
      <td>an F element preceded by an E element
      <td><a href="https://drafts.csswg.org/selectors-4/#general-sibling-combinators">general-sibling-combinators</a>
      <td>3
  <tbody>
    <tr>
      <td><code>F || E</code>
      <td>an E element that represents a cell in a grid/table
          belonging to a column represented by an element F
      <td><a href="https://drafts.csswg.org/selectors-4/#the-column-combinator">the-column-combinator</a>
      <td>4
    <tr>
      <td><code>E:nth-col(<var>n</var>)</code>
      <td>an E element that represents a cell belonging to the
          <var>n</var>th column in a grid/table
      <td><a href="https://drafts.csswg.org/selectors-4/#the-nth-col-pseudo">the-nth-col-pseudo</a>
      <td>4
    <tr>
      <td><code>E:nth-last-col(<var>n</var>)</code>
      <td>an E element that represents a cell belonging to the
          <var>n</var>th column in a grid/table, counting from the last one
      <td><a href="https://drafts.csswg.org/selectors-4/#the-nth-last-col-pseudo">the-nth-last-col-pseudo</a>
      <td>4
</table>

Note: Some Level 4 selectors (noted above as "3-UI") were introduced in [CSS3UI](https://drafts.csswg.org/selectors-4/#biblio-css3ui).

Not all CSS selectors are defined in the [CSS selectors module](https://developer.mozilla.org/en-US/docs/Web/CSS). CSS pseudo-element selectors are defined in the [CSS pseudo-elements](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_pseudo-elements) module.
