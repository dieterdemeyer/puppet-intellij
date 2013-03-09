# IntelliJ IDEA Puppet Module for Boxen [![Build Status](https://travis-ci.org/boxen/puppet-intellij.png)](https://travis-ci.org/boxen/puppet-intellij)

Install [IntelliJ IDEA](http://www.jetbrains.com/idea/), a code-centric IDE, focused on your productivity.

## Usage

```puppet
class { 'intellij':
  edition => 'community',
}
class { 'intellij':
  edition => 'ultimate',
}
```

## Required Puppet Modules

* `boxen`

## Development

Write code. Run one of the following tasks to test it:
* `rake syntax`
* `rake style`
* `rake spec`
* `rake build`
