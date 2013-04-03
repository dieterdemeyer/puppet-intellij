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

    it { should contain_class('intellij') }
    
    it { should contain_package('IntelliJ-IDEA-IC-12.1').with_provider('appdmg') }
    it { should contain_package('IntelliJ-IDEA-IC-12.1').with_source('http://download.jetbrains.com/idea/ideaIC-12.1.dmg') }
  end

  context 'with edition => ultimate' do
    let (:params) { { :edition => 'ultimate' } }

    it { should contain_class('intellij') }

    it { should contain_package('IntelliJ-IDEA-IU-12.1').with_provider('appdmg') }
    it { should contain_package('IntelliJ-IDEA-IU-12.1').with_source('http://download.jetbrains.com/idea/ideaIU-12.1.dmg') }
  end

end
