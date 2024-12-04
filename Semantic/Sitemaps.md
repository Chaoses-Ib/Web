# [Sitemaps](https://www.sitemaps.org/)
[Wikipedia](https://en.wikipedia.org/wiki/Sitemaps)

> Sitemaps are an easy way for webmasters to inform search engines about pages on their sites that are available for crawling. In its simplest form, a Sitemap is an XML file that lists URLs for a site along with additional metadata about each URL (when it was last updated, how often it usually changes, and how important it is, relative to other URLs in the site) so that search engines can more intelligently crawl the site.

[Sitemaps -- 4 Basics to Get You Started | Bing Webmaster Blog](https://blogs.bing.com/webmaster/May-2016/Sitemaps-%E2%80%93-4-Basics-to-Get-You-Started)
> Be sure to tell the search engines where your sitemap is located by listing it via `robots.txt` or via Bing Webmaster tools to promote getting listed on Bing.
```robots
Sitemap: http://www.example.com/sitemap.xml
```

> Complimentary to sitemaps, you should also have real time RSS feeds to tell Bing about all of your​​ fresh URLs which enables Bing to discover new URLs in a matter of minutes rather than up to 24 hours.

[Sitemaps Best Practices Including Large Web Sites | Bing Webmaster...](https://blogs.bing.com/webmaster/June-2014/Sitemaps-Best-Practices-Including-Large-Web-Sites/)

[The Importance of Setting the "lastmod" Tag in Your Sitemap | Bing...](https://blogs.bing.com/webmaster/february-2023/The-Importance-of-Setting-the-lastmod-Tag-in-Your-Sitemap)
> Without it, search engines may delay crawling updated content or may over-crawl your website as they cannot accurately determine if the content has been modified.
> 
> As a result of this study, we are revamping our crawl scheduling stack to better utilize the information provided by the "lastmod" tag in sitemaps. This will enhance our crawl efficiency by reducing unnecessary crawling of unchanged content and prioritizing recently updated content. We have already begun implementing these changes on a limited scale and plan to fully roll them out by June.
> 
> It is possible for sitemaps to have the same dates, as websites may publish multiple pages on the same day without updating them. However, if we observe that the dates are consistently set to the current date, we will suspect the validity of those dates and may disregard them.

> What’s about sitemap changefreq and priority tags?
> 
> Our analysis revealed that the majority of "changefreq" and "priority" tags in sitemaps are not set correctly. They are often assigned the same values across a sitemap and do not accurately reflect the likelihood of a page being updated or the relative importance of a URL in comparison to others. As a result, Bing largely disregards these fields.

[Bing enhances support for large Sitemaps | Bing Webmaster Blog](https://blogs.bing.com/webmaster/June-2009/Bing-enhances-support-for-large-Sitemaps)

## Parsing
Python:
- [ultimate-sitemap-parser: Ultimate Website Sitemap Parser](https://github.com/GateNLP/ultimate-sitemap-parser)
- [sitemap-parser: This Python library is designed to scrape sitemaps from websites, providing a simple and efficient way to gather information about the structure of a website.](https://github.com/TheLovinator1/sitemap-parser)
- advertools: [Download, Parse, and Analyze XML Sitemaps --- Python](https://advertools.readthedocs.io/en/master/advertools.sitemaps.html)

## Generating
- [python-sitemap: Mini website crawler to make sitemap from a website.](https://github.com/c4software/python-sitemap)
- [sitemap-generator: Sitemap generator](https://github.com/Haikson/sitemap-generator)
