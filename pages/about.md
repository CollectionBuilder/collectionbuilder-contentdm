---
title: About
layout: about
permalink: /about.html
---
{% include feature/jumbotron.html %} 

{% include feature/nav-menu.html sections="Collection Builder CDM Skin;About the About Page" %}

## Collection Builder CDM Skin

This demonstration collection features items from the University of Idaho Library's [Psychiana Digital Collection](https://www.lib.uidaho.edu/digital/psychiana/) and is built using [CollectionBuilder-CONTENTdm](https://github.com/CollectionBuilder/collectionbuilder-contentdm).

CollectionBuilder-CONTENTdm is a template for creating digital collection exhibits on top of existing CONTENTdm repositories. 
Powered by existing metadata, it generates a "skin" providing more engaging and interactive pathways to explore collection content and discover context. 
The demo collection features images, document pdfs, audio, and YouTube video items to demonstrate the range of possibilities using the CollectionBuilder visualizations.

Psychiana was a "mail order" religion popular in the 1930s and 40s.
Visit the full [Psychiana Digital Collection](https://www.lib.uidaho.edu/digital/psychiana/) or the [Frank B. Robinson Papers](http://archiveswest.orbiscascade.org/ark:/80444/xv97133/op=fstyle.aspx?t=k&q=psychiana) finding aid to learn more.

## About the About Page

We want to make About pages exciting, and easy to build. 

The CollectionBuilder about page features a narrowed column with its own (optional) menu, featured content, and some technical information. 

To build one, a user writes in [Markdown](https://guides.github.com/features/mastering-markdown/) and includes content from the site, as well as typical [Bootstrap](https://getbootstrap.com/) features like cards and modals, using code snippets like those detailed below. 

Each "feature include" has several options, which are documented in the files themselves. 

- Image --> `{% raw %}{% include feature/item-figure.html objectid="demo_psychiana554" width="75" %}{% endraw %}`

{% include feature/item-figure.html objectid="demo_psychiana554" width="75" %}

- PDF -- > `{% raw %}{% include feature/item-pdf-embed.html objectid="demo_psychiana376"  width="75" %}{% endraw %}`

{% include feature/item-pdf-embed.html objectid="demo_psychiana376" width="75" %}

- Video: `{% raw %}{% include feature/item-video-embed.html objectid="pyschiana_demo20" %}{% endraw %}`

{% include feature/item-video-embed.html objectid="pyschiana_demo20" %}

- Card -- > `{% raw %}{% include feature/card.html header="This is a Card" text="The card features an image from the collection as a cap" objectid="demo_psychiana568" width="50" centered=true %}{% endraw %}`

{% include feature/card.html header="This is a Card" text="The card features an image from the collection as a cap" objectid="demo_psychiana568" width="50" centered=true %}

- Buttons -- > `{% raw %}{% include feature/button.html text="Button Link to Somewhere" link="https://collectionbuilder.github.io/" color="success" %}{% endraw %}`

{% include feature/button.html text="Button Link to Somewhere" link="https://collectionbuilder.github.io/" color="success" centered=true %}
  
- Alerts -- > `{% raw %}{% include feature/alert.html text="this is an *alert* that 'warns' a user" color="warning" align="center" %}{% endraw %}`

{% include feature/alert.html text="This is an *alert* that 'warns' a user with centrally aligned text." color="warning" align="center"  %}

- Modals -- > `{% raw %}{% include feature/modal.html button="This is a modal using a 'primary' colored button to invite clicking" title="when clicked:" text="A Modal will pop out a box with some more information" color="primary"  %}{% endraw %}`

{% include feature/modal.html button="This is a modal using a 'primary' colored button to invite clicking" title="When clicked:" text="A Modal will pop out a box with some more information" color="primary"  %}

We hope this makes it easier for site builders to develop the collection AND add interesting and engaging contextual information.  
