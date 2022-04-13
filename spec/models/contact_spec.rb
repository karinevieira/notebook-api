require 'rails_helper'

RSpec.describe Contact, type: :model do
  subject(:contact) { build :contact }

  describe 'associations' do
    it { should belong_to(:kind) }
    it { should belong_to(:user) }
    it { should have_many(:phones) }
    it { should accept_nested_attributes_for(:phones) }
    it { should have_one(:address) }
    it { should accept_nested_attributes_for(:address) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:kind) }
  end
end