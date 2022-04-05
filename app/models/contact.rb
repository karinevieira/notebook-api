class Contact < ApplicationRecord
  belongs_to :kind
  belongs_to :user

  has_many :phones
  accepts_nested_attributes_for :phones, allow_destroy: true

  has_one :address
  accepts_nested_attributes_for :address, update_only: true

  validates :name, :email, presence: true

  def locale
    I18n.default_locale
  end
end
