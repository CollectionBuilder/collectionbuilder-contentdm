# CONTENTdm API Use

CollectionBuilder uses IIIF to get display derivatives for image objects and CDM "utils" API for non-image items.

Page templates typically check if an item is an image or not. 
If it is an image, it uses the HTML recipes for the IIIF image API calls in `_includes/image`.
The recipes assume it is being called by a page-gen page or loop through items (with the iteration variable named `item`), where full item metadata is available so that it can access `cdmid`. 
If the item is not an image, the templates default to GetThumbnail util API. 

The JS version of the recipes is manually encoded in the JS includes (in browse-js.html, carousel-js.html, map-js.html), which must be updated separately.

Currently, the image includes use `pct:` with % set in the theme.yml, e.g. large `pct:70`. 
This works consistently with most collections, unless the images in CDM are abnormally large or small. 
However, using % can be a bit random since you don't know the starting size. 
Secondly, CDM does not seem to allow less than 10%. 

The carousel include uses just the height, `,h` based on the height of the carousel set in theme.yml. 
This ensures the image makes sense in that location, but can end up with odd sizes for images with extreme ratios, large landscape or large vertical images. 
