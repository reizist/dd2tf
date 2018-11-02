# Dd2tf

This gem exports datadog configuration as terraform format(tf, tfstate).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dd2tf'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dd2tf


## Prerequisites
You need to set datadog credentials.

```
export DATADOG_API_KEY=xxxxx
export DATADOG_APP_KEY=xxxxx
```

## Usage

``` 
$ dd2tf
Commands:
  dd2tf downtime         # downtime
  dd2tf help [COMMAND]   # Describe available commands or one specific command
  dd2tf metric_metadata  # metric_metadata
  dd2tf monitor          # monitor
  dd2tf screenboard      # screenboard
  dd2tf timeboard        # timeboard
  dd2tf user             # user

Options:
  [--state=STATE]              # Path to the source state file. Default is "terraform.tfstate"
  [--state-out=STATE-OUT]      # Path to the destination state file to write to. If this isn't specified, the source state file will be used. This can be a new or existing path
  [--tfstate], [--no-tfstate]  # Generate tfstate
```


# Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/reizist/dd2tf. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.
