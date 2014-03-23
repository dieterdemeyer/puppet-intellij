require 'spec_helper'

describe 'intellij' do

  context 'with faulty input' do
    context 'with edition => foo' do
      let (:params) { { :edition=> 'foo' } }

      it { expect { subject }.to raise_error(
        Puppet::Error, /parameter edition must be community or ultimate/
      )}
    end
  end

  context 'with default parameters' do
    let (:params) { { } }

    version = '13.1.1'

    it { should contain_class('intellij') }

    it { should contain_package("IntelliJ-IDEA-IC-#{version}").with_provider('appdmg_eula') }
    it { should contain_package("IntelliJ-IDEA-IC-#{version}").with_source("http://download.jetbrains.com/idea/ideaIC-#{version}.dmg") }
  end

  context 'with edition => ultimate and default version' do
    let (:params) { { :edition => 'ultimate' } }

    version = '13.1.1'

    it { should contain_class('intellij') }

    it { should contain_package("IntelliJ-IDEA-IU-#{version}").with_provider('appdmg_eula') }
    it { should contain_package("IntelliJ-IDEA-IU-#{version}").with_source("http://download.jetbrains.com/idea/ideaIU-#{version}.dmg") }
  end

  context 'with edition => community and version => 12.1.1' do
    let (:params) { { :edition => 'community', :version => '12.1.1' } }

    version = '12.1.1'

    it { should contain_class('intellij') }

    it { should contain_package("IntelliJ-IDEA-IC-#{version}").with_provider('appdmg_eula') }
    it { should contain_package("IntelliJ-IDEA-IC-#{version}").with_source("http://download.jetbrains.com/idea/ideaIC-#{version}.dmg") }
  end
end
