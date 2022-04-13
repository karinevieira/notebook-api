require 'rails_helper'

RSpec.describe Api::V1::KindsController, type: :routing do
  it { should route(:get, 'api/kinds').to(action: :index, format: :json) }
  it { should route(:get, 'api/kinds/1').to(action: :show, id: '1', format: :json) }
  it { should route(:post, 'api/kinds').to(action: :create, format: :json) }
  it { should route(:put, 'api/kinds/1').to(action: :update, id: '1' ,format: :json) }
  it { should route(:patch, 'api/kinds/1').to(action: :update, id: '1', format: :json) }
  it { should route(:delete, 'api/kinds/1').to(action: :destroy, id: '1', format: :json) }
end