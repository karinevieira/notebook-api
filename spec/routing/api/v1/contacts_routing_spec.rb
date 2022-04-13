require 'rails_helper'

RSpec.describe Api::V1::ContactsController, type: :routing do
  describe 'routing' do
    it { should route(:get, 'api/contacts').to(action: :index, format: :json) }
    it { should route(:get, 'api/contacts/1').to(action: :show, id: '1', format: :json) }
    it { should route(:post, 'api/contacts').to(action: :create, format: :json) }
    it { should route(:put, 'api/contacts/1').to(action: :update, id: '1', format: :json) }
    it { should route(:patch, 'api/contacts/1').to(action: :update, id: '1', format: :json) }
    it { should route(:delete, 'api/contacts/1').to(action: :destroy, id: '1', format: :json) }
  end
end