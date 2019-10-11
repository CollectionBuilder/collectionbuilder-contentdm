# YouTube

Items in a collection that are hosted on YouTube must have a column `youtubeid`.
Pages CollectionBuilder use `youtubeid` to know an item is not on CDM, and to use the YouTube API to retrieve images instead.

The API is not well documented by Google, but here is the links to get thumbs and still images from YouTube videos:

main image: https://img.youtube.com/vi/{{ page.youtubeid }}/0.jpg

auto thumbs:

- https://img.youtube.com/vi/{{ page.youtubeid }}/1.jpg 
- https://img.youtube.com/vi/{{ page.youtubeid }}/2.jpg 
- https://img.youtube.com/vi/{{ page.youtubeid }}/3.jpg

Also:

- standard quality, http://img.youtube.com/vi/{{ page.youtubeid }}/sddefault.jpg
- highquality, http://img.youtube.com/vi/{{ page.youtubeid }}/hqdefault.jpg
- md quality (no black border), https://img.youtube.com/vi/{{ page.youtubeid }}/mqdefault.jpg
- max quality, https://img.youtube.com/vi/{{ page.youtubeid }}/maxresdefault.jpg
