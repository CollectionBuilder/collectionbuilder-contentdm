# Lazyload images

To avoid making browser load times too long, it is best to defer loading images until they are actually visible to the user. 
To do this CollectionBuilder uses [lazysizes](https://github.com/aFarkas/lazysizes) library.
Lazysizes is a simple to use, up-to-date lazyload library that requires no initialization, and will simply load all images if browser support is missing. 

To lazyload images on a page, add `lazyload: true` to yml front matter of a page or layout. 
This will add `lazysizes.min.js` to the foot during build.

For images that should be lazy loaded, add `class="lazyload"` and replace normal `src` with `data-src`.
No initialization is necessary. 

By default it is used on Browse and Timeline layouts.
