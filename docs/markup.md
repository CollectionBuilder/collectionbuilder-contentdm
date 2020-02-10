# Rich markup

## Dublin Core 

Dublin Core elements are added to Item pages driven by the "dc-map" column of config-metadata.csv.

Choose mapping options directly from:

- http://purl.org/dc/elements/1.1/
- http://purl.org/dc/terms/

The values will be directly added to meta tag name attribute.
For example, to use Dublin Core [Title](https://www.dublincore.org/specifications/dublin-core/dcmi-terms/#http://purl.org/dc/elements/1.1/title) from the "elements" namespace, the value would be `DC.title`.
To use an element from the "terms" namespace the prefix would be `DCTERMS`, e.g. [abstract](https://www.dublincore.org/specifications/dublin-core/dcmi-terms/#http://purl.org/dc/terms/abstract) is `DCTERMS.abstract`.
If the "dc-map" column is empty, no DC meta tags will be added.

Recommended fields to map include:

- `DC.title`
- `DC.creator`
- `DCTERMS.created`
- `DC.description`
- `DC.subject`
- `DC.type`

This implementation is based on DSpace.

## Schema.org 

Schema is a standard designed to provide structured semantic markup for search engines to better understand content of web pages. 
The concepts described apply to a generalized web landscape, and don't necessarily follow the logic and structure of library-based metadata or digital collections.
However, it is useful to provide the markup to drive better representations of the data in search results.
See [Full Schema hierarchy](https://schema.org/docs/full.html), or [Google Guide to Structure Data](https://developers.google.com/search/docs/guides/intro-structured-data).

### Item pages 

Item pages have in depth Schema markup in JSON-LD format driven by the object metadata. 
Schema elements are driven by the "schema-map" column of config-metadata.csv.
Each item page is given the basic type of `CreativeWork`, thus metadata fields can be mapped to any of the properties listed on the [CreativeWork documentation](https://schema.org/CreativeWork). 
Copy the exact property name, as this value will be turned into schema JSON-LD markup.
If the "schema-map" column is empty, only the automatically generated markup will be added.

Suggested field mappings include:

- `headline` (i.e. the title)
- `creator`
- `dateCreated`
- `description`
- `keywords`
- `contentLocation`
- `encodingFormat` (MIME type, should = format field of CollectionBuilder items)
- `license` (should only be used with a standardized rights URL)

Additionally, the Schema type, `isPartOf` (the collection), `image` (url), `thumbnailUrl` (url), and page `url` will be added automatically. 

Note: in the future, our base item type may move to `ArchiveComponent` when this spec is fully integrated into the standard, https://schema.org/ArchiveComponent .
An alternative approach would be to use `ItemPage`, https://schema.org/ItemPage to describe the object pages, although this seems less direct.

### Data page

The Data page includes Schema markup in JSON-LD representing the various data derivatives that can be downloaded. 
`Dataset` type, https://schema.org/Dataset

### Content pages

`WebPage`, https://schema.org/WebPage

https://schema.org/CollectionPage
https://schema.org/AboutPage