# Gallery viewer

Powered by lightGallery, http://sachinchoolur.github.io/lightGallery/

Used to add full screen view to item pages, potentially with support for multiple images or for browse (not currently implemented, for example see items in [HJCCC](https://www.lib.uidaho.edu/digital/hjccc/)).

Add assets and basic initialization to any page by adding front matter `gallery: true`. 
`div` containing the items must be labeled with `id="lightgallery"`.
A `div` around individual images is labeled with `class="gallery-img"` and given `data-src=` the higher quality image link.

This is currently automatically added to item pages for objects with images.
