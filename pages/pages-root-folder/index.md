---
#
# Use the widgets beneath and the content will be
# inserted automagically in the webpage. To make
# this work, you have to use › layout: frontpage
#
layout: frontpage
header:
#  image_fullwidth: header_mlss-skoltech.jpg
  particles: true
  site_title: Rodrigo Rivera-Castro
  site_description: Machine Learning Research

  social_links:
  - link:
      label: My Twitter
      href: http://www.twitter.com/rorcde
      class: fab fa-twitter
  - link:
      label: My Keybase
      href: https://keybase.io/rodrigorivera
      class: fab fa-keybase
  - link:
      label: My Github
      href: http://www.github.com/rodrigorivera
      class: fab fa-github-alt
  - link:
      label: My LinkedIn
      href: https://www.linkedin.com/in/riverarodrigo/
      class: fab fa-linkedin
  - link:
      label: My Goodreads
      href: https://www.goodreads.com/user/show/10442568-rodrigo-rivera
      class: fab fa-goodreads-g
  - link:
      label: My Telegram Channel
      href: https://t.me/mindthecustomer
      class: fab fa-telegram-plane
  - link:
      label: My Substack
      href: https://mindcustomer.substack.com/
      class: fab fa-envelopes-bulk

  text_links:
  - link:
      label: Google Scholar
      href: https://scholar.google.com/citations?user=nQGmpjUAAAAJ&hl=en
  - link:
      label: ORCID ID
      href: https://orcid.org/0000-0001-9230-7226
  - link:
      label: ArXiv
      href: http://arxiv.org/a/rivera_r_1
  - link:
      label: ResearchGate
      href: https://www.researchgate.net/profile/Rodrigo_Rivera-Castro


widget1:
  title: "Rodrigo Rivera"
  url: 'http://mlss.cc'
  image: banner_rodrigo_cdtm.jpg
  text: 'Rodrigo is a Mexican German researcher in Machine Learning. He brings more than twelve years of experience working on applied machine learning tasks for the e-commerce, technology, and FMCG sectors.'

widget2:
  title: "Research"
  url: 'http://www.skoltech.ru'
  image: banner_mlss.jpg
  text: 'His research intersects the areas of Machine Learning and Topological Data Analysis for time series and graph data. He seeks to advance the theory to provide forecasting and user modeling applications, emphasizing robust machine-learning software to address societal problems.'

widget3:
  title: "Outreach"
  url: 'http://mlss2019.skoltech.ru'
  image: banner_outreach.jpg
  text: 'Rodrigo is very keen on promoting Machine Learning scholarly through academic outreach activities. Two examples of this are co-organizing international events such as SMILES in 2021 and 2020 and MLSS in 2019.'

#  
# Use the call for action to show a button on the frontpage
#
# To make internal links, just use a permalink like this
# url: /getting-started/
#
# To style the button in different colors, use no value
# to use the main color or success, alert or secondary.
# To change colors see sass/_01_settings_colors.scss
#
#callforaction:
#  url: /application
#  text: Apply now ›
#  style: alert
permalink: /index.html
#
# This is a nasty hack to make the navigation highlight
# this page as active in the topbar navigation
#
homepage: true
---
