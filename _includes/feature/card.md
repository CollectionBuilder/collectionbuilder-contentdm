{% comment %}
    Bootstrap Card, https://getbootstrap.com/docs/4.4/components/card/
    Options:
    - "text" = main card text, can use markdown formatting. Use a Liquid capture to add more complex content.
    - "header" = card header text (in bar above card content)
    - "title" = card title text inside card content area
    - "objectid" = the given object (photo or youtube) will create a card cap image
    - "width" will use Bootstrap sizing to set the % size, choose from "25", "50", "75", or "100"
    - "float" will use Bootstrap float utility to add float, choose from "left" or "right"
{% endcapture %}
{%- endcomment -%}
<div class="card mb-3 {% if include.float %}float-{{ include.float }} {% endif %}{% if include.width %}w-{{ include.width }}{% endif %}">
{% if include.objectid %}
{% assign item = site.data[site.metadata] | where: "objectid", include.objectid | first %}
<img class="card-img-top" src="{% unless item.youtubeid %}{{ site.cdm-url }}/digital/iiif/{{ site.cdm-collection-id }}/{{ item.cdmid }}/full/max/0/default.jpg{% else %}https://img.youtube.com/vi/{{ item.youtubeid }}/maxresdefault.jpg{% endunless %}" alt="{{ item.title | escape }}">
{%- endif -%}
{% if include.header %}<h5 class="card-header">{{ include.header }}</h5>{% endif %}
<div class="card-body">
{% if include.title %}<h5 class="card-title">{{ include.title }}</h5>{% endif %}
<div class="card-text" markdown="1">

{{ include.text }}

</div>
</div>
</div>