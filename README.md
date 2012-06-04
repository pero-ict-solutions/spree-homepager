Homepager
=========

[![Build Status](https://secure.travis-ci.org/buddhi-desilva/spree-homepager.png)](http://travis-ci.org/buddhi-desilva/spree-homepager)

Spree extension that creates a homepage and enables a shop owner to place products and rotating banners on that homepage.

Installation
============

Add this to your Gemfile:

      gem 'spree-homepager', :git => 'git://github.com/buddhi-desilva/spree-homepager.git'

Next run:

    bundle install
    rails g spree_homepager:install

This will add a checkbox on the product edit page that you can check on to make the product appear on the homepage.
It will also add a admin tab called "Banners", here you can upload banners so they can rotate on your homepage.

Copyright (c) 2011 PeRo ICT Solutions, released under the New BSD License
