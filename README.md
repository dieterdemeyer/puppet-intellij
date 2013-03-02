# IntelliJ IDEA Puppet Module for Boxen

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

Write code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.
