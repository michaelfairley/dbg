# Dbg

A tiny "macro" to make puts based debugging a little nicer.

## Usage

```ruby
x = 12
dbg { "x" }
# prints "x: 12"

dbg { "x + 1" }
# prints "x + 1: 13"
```

## Installation

Add this line to your application's Gemfile:

    gem 'dbg'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dbg

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
