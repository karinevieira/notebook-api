class Contact < ApplicationRecord
  belongs_to :kind

  has_many :phones
  accepts_nested_attributes_for :phones, allow_destroy: true

  has_one :address
  accepts_nested_attributes_for :address

  validates :name, :email, presence: true

  def locale
    I18n.default_locale
  end

  def as_json(options={})
    current_hash = super(options)
    current_hash[:birthdate] = (I18n.l(self.birthdate) if self.birthdate.present?)
    current_hash
  end
end
