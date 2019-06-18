# Copyright notice

Rails view helper to add a copyright notice to the footer of your page.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'copyright_notice'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install copyright_notice

## Usage

### Basic

The following:

``` rhtml
<%= copyright_notice(start_year: 2018, name: "Katana Code Ltd.") %>
```

Will add this text to the footer of your page:

``` ruby
"© Katana Code Ltd., 2018-2019"
```


### Custom

To add your own string, simply customise the en.yml locale file with your custom message:

``` yml
en:
  copyright_notice: "Copyright %{name}, since: ${dates}"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/copyright-notice.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
