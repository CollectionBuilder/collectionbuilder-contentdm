---
title: About
layout: page
permalink: /about.html
# add image to index page bootstrap jumbotron
featured-image: "objects/test001.jpg"
---
{% include index/jumbotron.html %} 

### About the {{site.title}}

{{ site.description }}

The Schoenberg Manuscript Collection contains images and information related to the items donated to New College of Florida by Lawrence Schoenberg.

Cataloguing note: Since it was mainly designed to accommodate modern (generally printed) materials, the SUS Sobek database used by New College employs categories that do not always map precisely to the categories traditionally used for cataloguing medieval manuscripts. The following equivalencies should therefore be understood when using the Schoenberg Manuscript Collection database:

<table class="table table-striped border w-50">
	<tbody>
		<tr>
			<td><strong>Sobek</strong></td>
			<td><strong>Traditional Manuscript Catalogue</strong></td>
		</tr>
		<tr>
			<td>Title</td>
			<td>Short Description</td>
		</tr>
		<tr>
			<td>Alternate Title</td>
			<td>Shelfmark</td>
		</tr>
		<tr>
			<td>Publication Date</td>
			<td>Date of Origin</td>
		</tr>
		<tr>
			<td>Spatial Coverage</td>
			<td>Place of Origin</td>
		</tr>
		<tr>
			<td>Summary</td>
			<td>Physical Description</td>
		</tr>
	</tbody>
</table>

Finally, notes on script can be found under the final heading, "General Note."

{% include credits.md %}
