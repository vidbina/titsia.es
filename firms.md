---
layout: list
title: Firms
date:  2017-08-25 20:36:27
show: false
---
<div id="home">
  <ul class="posts">
    {% for firm in site.data.ventures %}
    <li>
      <a href="{{firm.url}}">
        <h2>
          <strong>{{ firm.name }}</strong>
        </h2>
        <p>{{ firm.description }}</p>
        {{ firm.embed }}
      </a>
    </li>
    {% endfor %}
  </ul>
</div>
