# Marilyn [![Build Status](https://secure.travis-ci.org/alaibe/marilyn.png)][travis] [![Dependency Status](https://gemnasium.com/alaibe/marilyn.png)][gemnasium] [![Code Climate](https://codeclimate.com/badge.png)][codeclimate]

[travis]: http://travis-ci.org/alaibe/marilyn
[gemnasium]: https://gemnasium.com/alaibe/marilyn
[codeclimate]: https://codeclimate.com/github/alaibe/marilyn

Marilyn is a Gem which allows you to use presenter patten easily into your rails project

## Resources
Bugs

* http://github.com/alaibe/marilyn/issues

Development

* http://github.com/alaibe/marilyn

Testing

* http://travis-ci.org/alaibe/marilyn

Source

* git://github.com/alaibe/marilyn.git

## Install

Add this to your Gemfile
``` ruby
  gem 'marilyn'
```

## Usage

You must generate your presenter
``` ruby
  rails g marilyn:presenter my_presenter
```

And in your view you can call
``` ruby
  <%= presenter_for('template', object: @object)
```

## Contributors

*Anthony Laibe