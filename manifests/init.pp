# Public: Install IntelliJ IDEA to /Applications
#
# Sample Usage:
#
#  class { 'intellij':
#    edition => 'community',
#  }
#
class intellij($edition='community', $version='12.1.2') {

  case $edition {
    'community': {
      $edition_real = 'IC'
    }
    'ultimate': {
      $edition_real = 'IU'
    }
    default: {
      fail('Class[intellij]: parameter edition must be community or ultimate')
    }
  }

  package { "IntelliJ-IDEA-${edition_real}-12.1":
    provider => 'appdmg',
    source   => "http://download.jetbrains.com/idea/idea${edition_real}-${version}.dmg",
  }

}
