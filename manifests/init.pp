# Public: Install IntelliJ IDEA to /Applications 
#
# Examples
#
#  include intellij 
class intellij {
  package { 'IntelliJ':
    provider => 'appdmg',
    source   => 'http://download.jetbrains.com/idea/ideaIC-12.0.4.dmg',
  }
}
