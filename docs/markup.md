# Rich markup

## Dublin Core 

Dublin Core elements are added to Item pages driven by the "dc-map" column of config-metadata.csv.

Choose mapping options directly from:

- http://purl.org/dc/elements/1.1/
- http://purl.org/dc/terms/

The values will be directly added to meta tag name attribute.
For example, to use Dublin Core [Title](https://www.dublincore.org/specifications/dublin-core/dcmi-terms/#http://purl.org/dc/elements/1.1/title) from the "elements" namespace, the value would be `DC.title`.
To use an element from the "terms" namespace the prefix would be `DCTERMS`, e.g. [abstract](https://www.dublincore.org/specifications/dublin-core/dcmi-terms/#http://purl.org/dc/terms/abstract) is `DCTERMS.abstract`.

This implementation is based on DSpace.

## Schema.org 

Full hierarchy, https://schema.org/docs/full.html

### Item pages 

Item pages have in depth Schema markup in JSON-LD format driven by the object metadata. 
Schema elements are driven by the "schema-map" column of config-metadata.csv.
Each item page is given the basic type of `CreativeWork`, thus metadata fields can be mapped to any of the properties listed on the [CreativeWork documentation](https://schema.org/CreativeWork). 
Copy the exact property name, as this value will be turned into schema JSON-LD markup.

ItemPage, https://schema.org/ItemPage

Note: in the future, our base item type may move to `ArchiveComponent` when this spec is fully integrated into the standard, https://schema.org/ArchiveComponent

### Data page

The Data page includes Schema markup in JSON-LD representing the various data derivatives that can be downloaded. 
`Dataset` type, https://schema.org/Dataset

### Content pages

`WebPage`, https://schema.org/WebPage

https://schema.org/CollectionPage
https://schema.org/AboutPage