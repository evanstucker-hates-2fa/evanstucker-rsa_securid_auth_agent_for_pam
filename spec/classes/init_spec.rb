require 'spec_helper'
describe 'rsa_securid_auth_agent_for_pam' do
  context 'with default values for all parameters' do
    it { should contain_class('rsa_securid_auth_agent_for_pam') }
  end
end
