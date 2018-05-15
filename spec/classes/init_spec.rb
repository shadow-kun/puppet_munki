require 'spec_helper'



describe 'puppet_munki' do
  let(:facts) do {
    'os' => {
      'name'   => 'Undef',
      'family' => 'Undef'
    }
  }
  end

  context 'with default values for all parameters' do
    it { should contain_class('puppet_munki') }
    it { is_expected.to compile.with_all_deps }
  end

  context 'with default values set for windows' do

  end
end
