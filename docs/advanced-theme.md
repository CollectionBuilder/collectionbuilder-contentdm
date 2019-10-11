# Advanced theme options

`theme.yml` includes some advanced theme options. 
By modifying `navbar-color` and `navbar-background` the basic colors of the navigation elements can be switched following Bootstrap theme colors.

To play with more Bootstrap theme-ing, try swapping out a [Bootswatch](https://github.com/thomaspark/bootswatch) favor. 
This will remove default Bootstrap CSS for the Bootswatch version (from a CDN), swiftly changing the entire look.

To tweak the default font and text colors check the "Theme fonts" section.
These setting will be passed to `/assets/css/custom.scss` which in turn passes the values to the `_sass` to build out the final CSS. 

- `base-font-size` we set font size a bit bigger than Bootstrap default, which can be tweaked here.
- `text-color` we set the base color to a darker black.
- `link-color` by default set to match Bootstrap "info". This is an easy way to add a distinctive brand color to your site.
- `base-font-family` sets the font-family for `body`, overriding Bootstrap. It will be necessary to manually add loading the font in the `head`. 

Additionally, see "color-theme.md" for information about automatic theming Bootstrap color classes for buttons, text, and backgrounds.
