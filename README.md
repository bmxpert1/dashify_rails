# DashifyRails

This project rocks and uses MIT-LICENSE.

## Installation

Add this line to your `Gemfile`:

    gem "dashify-rails", git: 'https://github.com/bmxpert1/dashify-rails', require: ['dashify-rails', 'websocket-rails']

Please note that NVD3 is provided via the asset pipeline and you do *not* need to copy their files into your application. Rails will get them from dashify-rails automatically.

Then add it to your javascript manifest file, most probably at `app/assets/javascripts/application.js`:

    //= require dashify-rails

Then add it to your css manifest file, most probably at `app/assets/stylesheets/application.css`:

    *= require dashify-rails