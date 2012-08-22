# Marilyne [![Build Status](https://secure.travis-ci.org/alaibe/marilyne.png)][travis] [![Dependency Status](https://gemnasium.com/alaibe/marilyne.png)][gemnasium] [![Code Climate](https://codeclimate.com/badge.png)][codeclimate]

[travis]: http://travis-ci.org/alaibe/marilyne
[gemnasium]: https://gemnasium.com/alaibe/marilyne
[codeclimate]: https://codeclimate.com/github/alaibe/marilyne

Marilyne is a Gem which allows you to use presenter patten easily into your rails project

## Resources
Bugs

* http://github.com/alaibe/marilyne/issues

Development

* http://github.com/alaibe/marilyne

Testing

* http://travis-ci.org/alaibe/marilyne

Source

* git://github.com/alaibe/marilyne.git

## Install

Add this to your Gemfile
``` ruby
  gem 'marilyne'
```

## Usage

You must generate your presenter
``` ruby
  rails g marilyne:presenter my_presenter
```

And in your view you can call
``` ruby
  <%= presenter_for('template', object: @object) %>
```

## Contributors

*Anthony Laibe
