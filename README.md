# blueprint-rails

This gem provides `reset`, `typography`, `grid`, `forms`, `ie`, and `print`
stylesheets from Blueprint CSS framework version 1.0.1.

We don't include those files in default stylesheets load paths, because you
may want not to use some of them.

## Background grid

If you need `grid.png`, just use it in your stylesheets:

    .showgrid { background:url('/assets/grid.png'); }

## Rails 3.1 and later

To use it in your application, just include this gem in your Gemfile:

    gem 'blueprint-rails'

And then, in your `app/assets/stylesheets/application.css`:

    /*
     *= require blueprint
     */

## Rails 3.0

I haven't had a chance to test it, yet.

## Uh... thank you's

This gem is just a quick attempt to extract blueprint stylesheets from my
applications in a centralized location. So, most of the copyrights go to Blueprint
and jquery-rails contributors (beer's on me). Thank you guys!
