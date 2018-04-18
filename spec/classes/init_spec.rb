require 'spec_helper'
describe 'puppet_munki' do
  context 'with default values for all parameters' do
    it { should contain_class('puppet_munki') }
  end
end
