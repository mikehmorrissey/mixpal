require 'spec_helper'

describe Mixpal do
  describe '#configure' do
    before do
      Mixpal.configure do |config|
        config.helper_module = TestHelperModule
      end
    end

    it 'allows a helper module to be set on Mixpal.configuration' do
      expect(Mixpal.configuration.helper_module).to be(TestHelperModule)
    end
  end
end
