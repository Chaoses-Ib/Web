#import "@local/ib:0.1.0": *
#title[URI Libraries]
= Rust
- #a[servo/rust-url: URL parser for Rust][https://github.com/servo/rust-url]
  - Non-ASCII domains are always encoded.

    #q[Non-ASCII domains are punycode-encoded per IDNA if this is the host
    of a special URL, or percent encoded for non-special URLs.
    
    Username and password are percent-encoded.]
    - `idna` is a bit heavy.

      #a[cargo add url : r/rustjerk][https://www.reddit.com/r/rustjerk/comments/1m95ejb/cargo_add_url/]
  - Used by:
    - reqwest, ureq, env_proxy
    - sqlx, rusqlite, diesel
    - git2
    - #a[typst/hayagriva: Rusty bibliography management.][https://github.com/typst/hayagriva]
    - ib-typ: #a[feat(www): `uri_community()` and `uri_media()`][https://github.com/Chaoses-Ib/ib-typ/commit/7234e81524e736bd842faa697b4035176cdaf16c]
  - #a[crate-py/url: Python bindings to the Rust url crate][https://github.com/crate-py/url]
  - #a[url-macro: A compile-time URL validation macro. Parses and checks URLs at compile-time, converting valid URLs into `url::Url` objects.][https://github.com/DenisGorbachev/url-macro]

  #a[Things you should know about Url in Rust][https://brokenco.de/2025/12/03/about-url.html]

- #a[`http::uri`][https://docs.rs/http/latest/http/uri/index.html]
  - #a[Get fragment of Uri - Issue \#127][https://github.com/hyperium/http/issues/127]
  - #a[Parsing "http://localhost" as URI results in `path_and_query: Some("/")` - Issue \#465][https://github.com/hyperium/http/issues/465]
  - #a[Provide Conversion from url::Url to hyper::Uri - Issue \#1219 - hyperium/hyper][https://github.com/hyperium/hyper/issues/1219]

  #a[Rant: dealing with `http::Uri` is annoying as heck : r/rust][https://www.reddit.com/r/rust/comments/1oj5bd7/rant_dealing_with_httpuri_is_annoying_as_heck/]

- #a[fluent-uri-rs: A generic URI/IRI handling library compliant with RFC 3986/3987.][https://github.com/yescallop/fluent-uri-rs]
  - Chinese

  #a[Announcing fluent-uri: a fast, easy and strict URI parser : r/rust][https://www.reddit.com/r/rust/comments/timilj/announcing_fluenturi_a_fast_easy_and_strict_uri/]

- #a[iref: Rust implementation of Internationalized Resource Identifiers (IRIs) and References, borrowed and owned.][https://github.com/timothee-haudebourg/iref]
  - Used by:
    - json-ld

  #q[
  I'm the author of the #a[iref][https://crates.io/crates/iref] crate which provide an implementation for both URIs and IRIs (#a[RFC 3987][https://tools.ietf.org/html/rfc3986] and #a[RFC 3986][https://tools.ietf.org/html/rfc3987]). It's basically a bunch of type-safe wrappers around `str` and `String` for various UIR/IRI parts. It has some features that might be interesting for you:
  - It's not limited to the http scheme
  - You can get the authority user (but not the password, I don't even know if there is a technical spec for this)
  - You can get the fragment
  - The `UriBuf` type is mutable in place
  ]

- #a[iri-string: String types for URIs/IRIs.][https://github.com/lo48576/iri-string]
- #a[oni-comb-rs/uri][https://github.com/j5ik2o/oni-comb-rs/tree/main/uri]
- #a[chayleaf/urn: A Rust crate for parsing URNs][https://github.com/chayleaf/urn/]
- #a[known-facts/known-schemes: Well-known URI/IRI schemes.][https://github.com/known-facts/known-schemes]

#t[2202]
#a[Is there any crate to do URI/path protocol parsing? - help - The Rust Programming Language Forum][https://users.rust-lang.org/t/is-there-any-crate-to-do-uri-path-protocol-parsing/71405]
