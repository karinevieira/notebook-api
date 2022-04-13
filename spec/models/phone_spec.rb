require 'rails_helper'

RSpec.describe Phone, type: :model do
  describe 'associations' do
    it { should belong_to(:contact) }
  end

  describe 'validations' do
    it { should validate_presence_of(:number) }
  end
end