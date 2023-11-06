# _config.yml values

## Required Settings for CONTENTdm

### cdm-collection-id: 

- The "collection alias" of your CONTENTdm collection
- The alias is a path assigned by CONTENTdm and can be found in CONTENTdm Admin on the Collections > Profile page, or by looking at the URL of the collection on the web. For example "https://cdm17254.contentdm.oclc.org/digital/collection/ui_ep/search" the collection alias is given after "/collection/", so would be `ui_ep`.
```yaml
cdm-collection-id: boxing
```

### cdm-url: 

- The full url for your public CONTENTdm instance (*with NO trailing slash!*). 
- Generally these follow the pattern "https://cdm" + a number + ".contentdm.oclc.org", although custom domains should also work. However, your CDM admin interface url (starting with "server", e.g. https://server12345.contentdm.oclc.org) will not work.
```yaml
cdm-url: https://cdm12345.contentdm.oclc.org
```

-------------------

# theme.yml values

This section of "_data/theme.yml" configures advanced options such as image and font size, and Bootstrap themes. 
This is an optional section—-your site will work just fine without adjusting these variables, but they're available if you'd like the extra options for customization.

## CDM image % for IIIF:

**CDM-Users only**: This is a *CONTENTdm-specific* variable section for adjusting size of images used throughout the site.
CollectionBuilder uses the [IIIF Image API](https://help.oclc.org/Metadata_Services/CONTENTdm/Advanced_website_customization/API_Reference/IIIF_API_reference){:target="_blank" rel="noopener"} to retrieve images using a percentage size option. 
The percentage must be 10% or greater.

### image-percentage-large:

- Default `70`

```yaml
image-percentage-large: 50
```

### image-percentage-medium: 

- Default `40` 

```yaml
image-percentage-medium: 30
```

### image-percentage-small:

- Default `20`

```yaml
image-percentage-small: 10
```

**Pro Tip:** If your images are appearing blurry or take too long to load, try adjusting the image-sizing settings. The appropriate percentage depends on the full size of images contained in your CDM repository and may require some experimentation.
