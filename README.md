Homepager
=========

Spree extension that creates a homepage and enables a shop owner to place products on that homepage.

Installation
============

Add this to your Gemfile:

      gem "spree-homepager", :git => "git://github.com/pero-ict-solutions/spree-homepager.git", :require => "homepager"  

Next run:

    bundle install
    rake homepager:install  
    rake db:migrate  

This will add a checkbox on the product edit page that you can check on to make the product appear on the homepage

Copyright (c) 2011 PeRo ICT Solutions, released under the New BSD License
