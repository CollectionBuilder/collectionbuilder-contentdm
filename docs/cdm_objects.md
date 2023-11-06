# Collection Objects Using CONTENTdm

CollectionBuilder-CONTENTdm is designed as a "skin" over the top of one or more existing CONTENTdm digital collections. Collection objects are managed and stored in the CONTENTdm repository as normal -- you don't need to change anything with your CONTENTdm set up or workflow!

This also means you don't have to do any special "objects" prep for CollectionBuilder! 
CB-CDM work is focused on getting the metadata correct after exporting from CONTENTdm -- which is covered in the CollectionBuilder-CONTENTdm Metadata section.

CB-CDM sites use standard [CONTENTdm APIs](https://help.oclc.org/Metadata_Services/CONTENTdm/Advanced_website_customization/API_Reference/CONTENTdm_API) to retrieve display images and file downloads from your existing collection using each item's "CONTENTdm number" (`cdmid` in CB) and the "Collection Alias" (`cdm-collection-id` or `collectionid` in CB). 

**More Info:** Learn more about using CONTENTdm APIs in our [Constructing Paths for CONTENTdm Objects documentation](https://collectionbuilder.github.io/cb-docs/docs/metadata/object-paths/#path-for-contentdm-objects).

The [CDM "utils" API](https://help.oclc.org/Metadata_Services/CONTENTdm/Advanced_website_customization/API_Reference/CONTENTdm_API/CONTENTdm_Website_API_Reference_-_utils) provides a thumbnail and download for any object format.
The [CDM IIIF API](https://help.oclc.org/Metadata_Services/CONTENTdm/Advanced_website_customization/API_Reference/IIIF_API_reference) provides higher quality images for objects with an image format.

In addition to objects in your CONTENTdm repository, CB-CDM supports external video items hosted on YouTube. 
These items do not have to be part of your CONTENTdm repository.

**Note:** CONTENTdm's "compound object" type can be tricky to work with! 
There are solutions to working with and displaying "compound objects" in CB-CDM, however, they don't work out of the box and require some metadata transformations.
CollectionBuilder-CSV *does* support compound objects, so you may want to explore using it instead!
