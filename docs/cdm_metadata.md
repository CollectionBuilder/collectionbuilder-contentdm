# CollectionBuilder-CONTENTdm Metadata

CollectionBuilder-CONTENTdm supports creating collections of items from single or multiple CONTENTdm collections. 
In most cases the first step will be to export metadata from CONTENTdm which will then be transformed to work with CollectionBuilder by adding a few required fields.

## Export Metadata from CONTENTdm

1. Log in to the CONTENTdm administration portal, click on the "collections" tab, and choose the collection you'd like to export from the "Current collection" dropdown menu. Once you've selected a collection, click the button labeled "change" to the right of the dropdown menu.
2. Further down the "Collection administration" page, locate the "Export" link, and click on it. This should lead you to an "Export metadata" page.
3. Make sure the radio button next to "Tab-delimited" is checked, and then check the box immediately underneath to select the option "return field names in first record." Click the "next" button. This will lead to an "Export successful" page.
4. Right click on the "export.txt" file and choose the option "Save Link As..."
5. Name the file and save it to your computer. (Do not directly open with Excel as this will jumble the UTF-8 encoding!)
6. Create a new, blank Sheet in Google Sheets. Click on File > Import. Click on the "Upload" tab. Select or drag and drop the exported metadata file to upload it to Google Sheets.
7. In the "Import file" popup, for "Import location" select "Replace spreadsheet," and for "Separator type" select "Tab." Click the "Import data" button.

Now you're ready to begin adding to and editing your metadata to make sure it has the fields required for CollectionBuilder to work.

## Metadata Template

We provide a metadata template on Google Sheets as an example or starting point for your collection (make sure you're logged in to Google Drive, then open the template and click the File menu and select "Make a Copy" to get started).
Also, check the demo metadata CSVs in the "_data" folder in your repository for more examples. 

[CollectionBuilder-CONTENTdm Metadata Template](https://docs.google.com/spreadsheets/d/14iWUEoAJ6T9WDqlPnIHRN7M8-YgmMV4_bjFPVuSZ0yk/copy?usp=sharing)

You do **not** need to exactly match the CollectionBuilder template. 
Just ensure that you create the required fields following the conventions described below. 

------

## Required Fields for CollectionBuilder-CONTENTdm

Without values in the fields below, CollectionBuilder will not work properly.

### objectid:

- This is the field that CollectionBuilder uses to identify each object. This should be a unique string, all **lowercase** with no spaces or special characters as it will be used to form the item's URL. Underscores (`_`) and dashes (`-`) are okay; **slashes (`/`) should NOT be used in this field**.
- Example value: `coll002`

### cdmid:

- This is the unique identification number assigned to the item by CONTENTdm (the field titled "CONTENTdm number" in your exported metadata). For convenience, we generally make this correspond with the number in the item's objectid (ex. objectid: `coll002`, cdmid: `2`), but this correspondence is not necessary for CollectionBuilder to work.
- Example value: `142`

### title: 

- The title field is used to indicate the name of an item. This should be a short, descriptive set of words that identify the item. Each item may only have one title.
- Example value: `Haystack Rock`

### format: 

- This field indicates the item's media type. Since CollectionBuilder uses logic based on `format` to display objects, this is the most important field to ensure the interactive visualizations function correctly. If there are errors or anomalies, some pages will not work as expected. The input for this field should be structured according to [MIME type](https://www.iana.org/assignments/media-types/media-types.xhtml) standards, consisting of a type and a subtype concatenated with a slash (`/`) between them.
- Example values:
    - Image: `image/jpeg`
    - Document: `application/pdf`
    - Audio: `audio/mp3`
    - Video: `video/mp4`

### collectionid (only required for multiple CDM collections):

- *This column is only required if including items from multiple CONTENTdm collections!*
- `collectionid` matches the "collection alias" of the CONTENTdm collection that contains the item.
- The alias is a path assigned by CONTENTdm and can be found in CONTENTdm Admin on the Collections > Profile page, or by looking at the URL of the collection on the web. For example "https://cdm17254.contentdm.oclc.org/digital/collection/ui_ep/search" the collection alias is given after "/collection/", so would be `ui_ep`.
- If this field is blank, it will default to the value of `cdm-collection-id` set in "_config.yml".
- Example value: `barstock`

*More Info:* 
CB-CONTENTdm supports creating collections of items from single or multiple CONTENTdm collections. 
Knowing the correct CONTENTdm collection name for every item is necessary to retrieve the correct objects from the API and to set up the search.
By default, the CONTENTdm collection ID ("alias") is set in "_config.yml", as the value of `cdm-collection-id`. 
If all your items are from a single CDM collection, only this value in "_config.yml" is necessary and `collectionid` column is not necessary in your metadata file.
The nav links to CDM search and database will be derived from unique values in the `collectionid` column plus `cdm-collection-id` in "_config.yml".

### youtubeid (only required for YouTube video items):

- This is the unique string assigned to a video when it is uploaded to YouTube. An easy way to find this is to look at the url for your YouTube video. The ID will be the string attached to the end of the url. For example, in "https://www.youtube.com/watch?v=sHhk1eAgopU" the youtubeid is `sHhk1eAgopU`.
- Fill in `youtubeid` for **only** for YouTube items--leave it blank for all other items! If your collection does not contain YouTube videos, you can delete the column.
- Example value: `sHhk1eAgopU`

---

## Fields Required for Visualizations

CollectionBuilder uses these fields to generate contextual visualizations, including a map, timeline, and word clouds reflecting the frequency of subjects and locations in a collection.

**Page** | **Required Fields** |
Map | `latitude` & `longitude` |
Timeline | `date` (yyyy at minimum) |
Subjects | `subject` |
Location | `location` |

### latitude:

- A geographic coordinate specifying the north-south position of an item. See the [Map]() section for more information.
- Example value: `46.731643`

### longitude:

- A geographic coordinate specifying the east-west position of an item. See the [Map]() section for more information.
- Example value: `-117.165625`

- **Pro Tip:** Latitude and longitude for your items can be found using online mapping platforms:
    - On [Google Maps](https://www.google.com/maps/) right click on a point and select the lat/long displayed at the top of the menu. This will copy the lat/long values to your clipboard, allowing you to paste them into your metadata spreadsheet. Alternatively, if you left click on the map, the lat/long will display in a box towards the bottom. Double clicking on a spot will center the map on that location, and the lat/long will be added to the URL where you can copy it from the address bar.
    - On [Open Street Map](https://www.openstreetmap.org/) right click on a point and select "Show address" from the menu. The lat/long will display on the left side panel, where you can copy and paste to your metadata.
    - On [iTouch Maps](https://itouchmap.com/?r=latlong) search or move the map to approximate location, then hold Shift and click on the spot. The lat/long will display below.

**If your metadata does not have map coordinates**, but you would like to experience CollectionBuilder's map visualization, we've created a [demo list of latitudes and longitudes](https://docs.google.com/spreadsheets/d/1eSj7zfthuc7-ntdnZLqNYETxVa5Z55YK8BPPao53-6w/copy?usp=sharing) that you can add to your data just for practice.

### date: 

- This field indicates a point in time associated with the item. This `date` field will be used for sorting and displaying on a timeline, so may often be an estimated / approximate date, rather than one more precisely formatted to archival description standards. We suggest adding more complex descriptions of date (date ranges, uncertainties, etc) in a separate field such as "date_created".
- Dates should be represented in the format `yyyy-mm-dd`, which will enable our various timeline visualizations. See the [Timeline]() section for more details. 
- For less exact dates, `yyyy-mm` or `yyyy` may be used.
- Example value: `1997-07-16`, `1997-07`, `1997`
- (Dates in a `mm/dd/yyyy` format will also work)

### subject:

- The subject field contains topic(s) related to the item. 
- This field allows for multiple subjects to be input for a single record. Each should be separated with a semicolon (`;`). 
- See the [Subjects]() section for more information.
- Example value: `Dogs; Cats; Zebras`

*Note:* This field needs to be named **_'subject' (not 'subjects')_** for many default features in CollectionBuilder to work. 
Data in this field will create the word cloud that allows users to visualize the frequency of subjects used within the collection.

### location: 

- This field designates a geographic location(s) to which the item is tied. Much like the subject field, this field will build a tag cloud of the most used locations in your collection. See the [Locations]() section for more information. Be sure to separate multiple location entries for a single record with a semicolon (`;`).
- Example value: `Pullman, Washington; Moscow, Idaho`

**If your metadata does not have map coordinates**, but you would like to experience CollectionBuilder's map visualization, we've created a [demo list of latitudes and longitudes](https://docs.google.com/spreadsheets/d/1eSj7zfthuc7-ntdnZLqNYETxVa5Z55YK8BPPao53-6w/copy?usp=sharing) that you can add to your data just for practice.

------

## Optional Fields

The rest of the fields in the CollectionBuilder metadata template are not required for CollectionBuilder or its visualizations to work, but their use is encouraged to ensure a richly informative collection. These remaining fields are listed below, along with their respective definitions and examples.

CollectionBuilder can accommodate any field you include in your metadata once you customize your site. For example, you can display any field on item pages or on the Browse page. See the [Page config]() sections for more information.

### creator:

- The creator property designates an entity primarily responsible for making the resource. Multiple creators may be input, as long as each is separated by a semicolon (`;`).
- Example value: `Smith, John` or `Smith, John; Doe, Jane`

### description:

- The description should be a brief account of the object. Each object should only have one description.
- Example value: `Postcard of the Memorial Gymnasium on the University of Idaho campus in Moscow, Idaho.`

### source:

- The source field designates a related source collection or resource from which the object is derived. This field is especially relevant for digitized archival collections. In such a situation, the name of the physical archival collection would be the input for this field. The input should be expressed as the collection name followed by a comma, then followed by the holding library.
- Example value: `PG 5, University of Idaho Library Special Collections and Archives`

### identifier:

- The identifier field is used to preserve the unique identifier assigned to the object by the object's (usually physical) source collection.
- Example value: `ARG-02-16-1993`

### type:

- An object's type distinguishes between types of image, sound, text, etc. using a one- or two-value input. At minimum, the input should contain a value chosen from the [DCMI Type Vocabulary](https://www.dublincore.org/specifications/dublin-core/dcmi-type-vocabulary/2003-02-12/). If using a second value, the second value does not need to relate to a controlled vocabulary, but should give further specification of the object type. The two values in a pair should be separated by a semicolon (`;`). See examples below.
- Example value: `Image;StillImage`, `Image;MovingImage`, `Text`, `Sound`

### language: 

- This field indicates the language associated with the object. Recommended best practice is to use a controlled vocabulary such as the [ISO 639-2 Codes for the Representation of Names and Languages](http://www.loc.gov/standards/iso639-2/php/code_list.php) to designate language tags.
- Example value: `en`, `fr`, `de`

### rights:

- The rights field should include a free-text rights statement describing information about rights held in and over the object.
- Example value: `Educational use includes non-commercial use of text and images in materials for teaching and research purposes. Digital reproduction rights granted by the University of Idaho Library. For other uses beyond free use, please contact University of Idaho Library Special Collections and Archives Department.`

### rightsstatement:

- This field is a standardized rights statement, designated in the form of a URI. It should be presented as a [creativecommons.org](https://creativecommons.org/) URI or a [rightsstatements.org](https://rightsstatements.org/en/) URI.
- Example value: `http://rightsstatements.org/vocab/NoC-US/1.0/`
