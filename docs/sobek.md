# Sobek reference

- [Sobek API Reference](http://sobekrepository.org/sobekcm/apis/items)

## What's different from CollectionBuilder-contentdm?

In Sobek skin:
- Metadata field `cdmid` becomes `imageid`
- In config.yml and throughout the site, `cdm-url` becomes `sobek-url`, and `cdm-collection-id` becomes `sobek-collection-id`
- File name change: `nav-search-cdm.html` becomes `nav-search-sobek.html`

Note: Sobek's API allows for pulling full size jpg (width 630p) and thumbs (width 150p). Therefore, the `includes/image/small.html`, `includes/image/medium.html` (created for collectionbuilder-contentdm) have not been utilized in this Sobek skin.

## API

Sobek Brief View REST API (citation and files): 
- The BriefItem includes the images, downloads, and the table of content information from the structure map in the METS for the digital resource.
- URL structure using JSON format:
    - `{{ baseurl }}/engine/items/brief/json/{{ bibid }}`
    - bibid = Bibliographic identifier assigned to item    
    - Example: `http://ncf.sobek.ufl.edu/engine/items/brief/json/AA00026053`

## Steps for cleaning metadata:

1. Acquire list of bibids for items in a collection
2. Import records into OpenRefine, create new briefitem field that uses the collection's baseurl and each item's bibid to create URLs for each item.
3. Fetch JSON data for each item (see [Fetching and Parsing Data from the Web with OpenRefine](https://programminghistorian.org/en/lessons/fetch-and-parse-data-with-openrefine) for instructions on how to use GREL to fetch)
4. Create new column and parse fetched data into these fields: `systemfolder,objectid,vid,publisher,format,pdf_name,pdf,title,image_name,thumb,image,imageid,measurements,title_alternative,title_original,subject,source_institution,rights,rightsstatement,type,description_physical,note,permanentlink,language,date_modified,date_created,format_original,holding_location,genre,publication_date,Collection,description,short_description`
