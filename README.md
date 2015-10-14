# Schemagen

Generates RESTful API schemas, documentation, and client libraries by inspecting
your Rails application.

Schemagen examines your Rails app's routes, controllers, models, views,
serializers, and comments to build an intermediate object representation
that describes a REST API. Once you have an in-memory representation of your
Rails API, you can use it to generate a schema using one of the popular API
description standards (e.g. JSON Schema, RAML, Swagger, etc.).

Once you've generated a schema, you can use pre-existing tooling for the schema
of your choice to further generate client libraries and documentation for your
API. Alternatively, you can write your own Schemagen generators, which is useful
if pre-existing tooling is not available or you want to do something really
  custom.

## Stability

Schemagen is currently a proof of concept. Use it for inspiration, but don't use
it in production, at least not yet!

## Roadmap

* Derive an in-memory RESTful API representation by inspecting a simple Rails app.
  At this step, Schemagen will only examine the routes, controllers, models, and
  documentation comments.
* Create an example [JSON (Hyper) Schema](http://json-schema.org/) generator.
* Add support for custom generators.
* Create a built-in
  [activemodel-style](http://guides.rubyonrails.org/active_model_basics.html)
  client library generator.
* Add support for inspecting [Jbuilder views](https://github.com/rails/jbuilder).
* Add support for inspecting
  [Active Model Serializers](https://github.com/rails-api/active_model_serializers).
* Add support for embedded resources within the request and response data.
* Add support for nested resources.
* Create an example [Swagger](http://swagger.io/) generator.
* Create an example [RAML](http://raml.org/) generator.
* Create an example [JavaScript/jQuery](http://api.jquery.com/jquery.ajax/) client 
  library generator.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'schemagen'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install schemagen

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment. Run `bundle exec schemagen` to use the gem in this directory, ignoring other installed copies of this gem.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/schemagen. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

