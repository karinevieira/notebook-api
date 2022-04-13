require 'rails_helper'

RSpec.describe Api::V1::PhonesController, type: :routing do
  describe 'routing' do
    it { should route(:get, '/api/contacts/1/phones').to(action: :show, contact_id: '1', format: :json) }
    it { should route(:post, '/api/contacts/1/phone').to(action: :create, contact_id: '1', format: :json) }
    it { should route(:put, '/api/contacts/1/phone').to(action: :update, contact_id: '1', format: :json) }
    it { should route(:patch, '/api/contacts/1/phone').to(action: :update, contact_id: '1', format: :json) }
    it { should route(:delete, '/api/contacts/1/phone').to(action: :destroy, contact_id: '1', format: :json) }
  end

end