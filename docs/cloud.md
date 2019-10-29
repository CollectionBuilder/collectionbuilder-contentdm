# Create Cloud Visualizations

The default CB theme has two cloud visualizations pre-configured: subjects and locations. 
These can be easily controlled using variables in the `theme.yml`.

```
# Subject page
subjects-page: true # true / false, turns off subject generation 
subjects-fields: subject;creator # set of fields separated by ; to be featured in the cloud
subjects-min: 1 # min size for subject cloud, too many terms = slow load time!
subjects-stopwords: # set of subjects separated by ; that will be removed from display, e.g. boxers;boxing

# Locations page
locations-page: false # true/false
locations-fields: location # set of fields separated by ; to be featured in the cloud
locations-min: 1 # min size for subject cloud, too many terms = slow load time!
locations-stopwords: # set of subjects separated by ; that will be removed from display, e.g. boxers;boxing
```

Both have a pre-made _layout, and use that layout to add an _include via `foot.html`.

Using the theme configuration options these two pages could be transformed into clouds based on any metadata field. 

However, clouds can also be added to any page using the `_include/js/cloud-js.html` include in the page stub content. 
For example:

`{% include js/cloud-js.html fields="creator;publisher" min="2" stopwords="example;another" %}`

Cloud-js include assumes a div with `id="cloud"` exists on the page, like: 

`<div id="cloud" class="text-center my-4 bg-light border rounded p-2"></div>`

Rather than manually adding the div, you can use `layout: cloud` to automatically add it beneath the page content. 
