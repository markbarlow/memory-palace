---
title: Highlights
layout: page
permalink: /highlights/
classes: [page--main-width]
---

{% assign highlighted_posts = site.posts | where_exp: "post", "post.highlight" %}
{% if highlighted_posts.size > 0 %}
  {% include posts-title-list.html posts=highlighted_posts %}
{% else %}
  <p>No posts have been marked as highlights yet.</p>
{% endif %}
