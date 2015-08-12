[![Build Status](https://travis-ci.org/ruby-hl7/ruby-hl7-zps.svg)](https://travis-ci.org/ruby-hl7/ruby-hl7-zps)

# HL7::ZPS

Adds support for the ZPS segment to [`ruby-hl7`](https://github.com/ruby-hl7/ruby-hl7)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruby-hl7-zps'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruby-hl7-zps

## Usage

```ruby
msg = HL7::Message.parse(hl7_with_zps)
Array(msg[:ZPS]).each do |zps|
  puts "Facility: #{zps.facility_name}"
end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/ruby-hl7-zps/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
