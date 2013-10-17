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
  rails g marilyne:presenter base # => app/presenters/base_presenter.rb
```

And in your view you can call
``` ruby
  <%= presenter_for('template', object: @base) %>
```

## Exemple

Basic usage:
``` ruby
  presenter_for('base')
    # => render partial: 'base', object: BasePresenter.new(template, Base.new)
```

It's possible to specify the object you want present:
``` ruby
  presenter_for('base', object: @object)
    # => render partial: 'base', object: BasePresenter.new(template, @object)
```

or multiple object
``` ruby
  presenter_for('base', objects: [@object, @other_object])
    # => render partial: 'base', object: BasePresenter.new(template, @object, @other_object)
```

A block can also be passed and the the render will be call only if block is true
``` ruby
  presenter_for('base', object: @object) { |object| object.ok? }
```

Finally, it's also possible to pass a presenter in options
``` ruby
  presenter_for('base', presenter: 'MySpecificPresenter', object: @object)
    # => render partial: 'base', object: MySpecificPresenter.new(template, @object)
```

## Contributors

*Anthony Laibe


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/alaibe/marilyne/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

