require 'spec_helper'

describe 'thunderbird' do

  version = '17.0.5'

  it { should contain_class('thunderbird') }
  it { should contain_package("Thunderbird-#{version}").with_provider('appdmg') }
  it { should contain_package("Thunderbird-#{version}").with_source("http://download-origin.cdn.mozilla.net/pub/mozilla.org/thunderbird/releases/#{version}/mac/en-US/Thunderbird%20#{version}.dmg") }

end
