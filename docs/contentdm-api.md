# CONTENTdm API Use

CollectionBuilder-CONTENTdm uses CONTENTdm API to retrieve display images and file downloads from the repository. 
In general, it uses IIIF for image objects and CDM "utils" API for non-image items.

Page templates typically check if an item is an image or not. 
If it is an image, it uses the HTML recipes for the IIIF image API calls in `_includes/image`.
The recipes assume it is being called by a page-gen page or loop through items (with the iteration variable named `item`), where full item metadata is available so that it can access `cdmid`. 
If the item is not an image, the templates default to GetThumbnail util API. 

The JS version of the recipes is manually encoded in the JS includes (in browse-js.html, carousel-js.html, map-js.html), which must be updated separately.

Currently, the image includes use `pct:` with % set in the theme.yml, e.g. large `pct:70`. 
This works consistently with most collections, unless the images in CDM are abnormally large or small (see CDM IIIF Issues below for limitations). 
However, using % can be a bit random since you don't know the starting size. 
Secondly, CDM does not seem to allow less than 10%. 

The carousel include uses just the height, `,h` based on the height of the carousel set in theme.yml. 
This ensures the image makes sense in that location, but can end up with odd sizes for images with extreme ratios, large landscape or large vertical images. 

## CONTENTdm API reference

- [CONTENTdm API reference](https://www.oclc.org/support/services/contentdm/help/customizing-website-help/other-customizations/contentdm-api-reference.en.html)
- [CONTENTdm IIIF API reference](https://help.oclc.org/Metadata_Services/CONTENTdm/Advanced_website_customization/API_Reference/IIIF_API_reference)
- [IIIF Image API 2.1.1](https://iiif.io/api/image/2.1/)

## CDM utls

This API is unique to CONTENTdm and used to get image and file downloads from the repository.
CollectionBuilder uses these calls:

- [GetThumbnail](https://www.oclc.org/support/services/contentdm/help/customizing-website-help/other-customizations/contentdm-api-reference/getthumbnail.en.html#par_text_4c0f) - will provide a thumb for any object in the repository. `/utils/getthumbnail/collection/alias/id/pointer` 
- [GetFile](https://www.oclc.org/support/services/contentdm/help/customizing-website-help/other-customizations/contentdm-api-reference/getfile.en.html#par_text_6545) - provides a download link for PDF objects, `/utils/getfile/collection/alias/id/pointer/filename/name`
- [GetStream](https://www.oclc.org/support/services/contentdm/help/customizing-website-help/other-customizations/contentdm-api-reference/getstream.en.html#par_text_2d39) - provides download and playable link for video/audio objects, `/utils/getstream/collection/alias/id/pointer`

## IIIF 

CONTENTdm supports IIIF API for images only (i.e. won't work with an object that is a PDF file or video, etc).

IIIF standard looks like: 
`{scheme}://{server}{/prefix}/{identifier}/{region}/{size}/{rotation}/{quality}.{format}`

Which looks like this in CDM: 
`https://cdm17254.contentdm.oclc.org/digital/iiif/psychiana/548/full/pct:50/0/default.jpg`

Get max size:
`https://cdm17254.contentdm.oclc.org/digital/iiif/psychiana/548/full/max/0/default.jpg`

Get image info example: `https://cdm17254.contentdm.oclc.org/digital/iiif/psychiana/548/info.json`

## CDM IIIF Issues 

CONTENTdm implementation of IIIF has some limitations:

- using the Size parameter `!w,h` does not work, instead returns `max` instead.
- using the Size parameter `pct:` with less than 10% does not work, and will return an error message.
- if either pixel size used in Size parameter `w,h` is larger than actual dimension of the full image, it will return an error message.

Given these limits, we have used `pct:` in most API calls, since it is the least likely to break. 
However, this means that if the originals in CDM are abnormally large or small, you will want to adjust the % used in the theme.yml. 
With collections that have multiple scan qualities, this may still result in inconsistent image sizes in the visualizations and many require experimentation with the API to resolve. 
