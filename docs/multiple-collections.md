# Multiple CDM collections

CB-CONTENTdm supports creating collections of items from multiple COTENTdm collections. 
Knowing the correct CONTENTdm collection name for every item is necessary to retrieve the correct objects from the API.

By default, the CONTENTdm collection ID (sometimes called "alias") is set in "_config.yml", as the value of `cdm-collection-id`. 
If all your items are from a single CDM collection, only this value is necessary. 

If you have items from multiple CDM collections, add a column named `collectionid` to your metadata file.
Each item will have it's collection alias in this column, which will be used in all API calls.
If there is no `collectionid` value, the item will default to the value of `site.cdm-collection-id` (set in _config.yml).
The nav links to CDM search and database will be derived from unique values in `collectionid` column plus `site.cdm-collection-id`.
