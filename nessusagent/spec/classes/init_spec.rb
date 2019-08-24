require 'spec_helper'
describe 'nessusagent' do
  context 'with default values for all parameters' do
    it { should contain_class('nessusagent') }
  end
end
