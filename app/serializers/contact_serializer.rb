class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :birthdate

  belongs_to :user

  belongs_to :kind do
    link(:related) { api_contact_kind_url(object.id) }
  end

  has_many :phones do
    link(:related) { api_contact_phones_url(object.id) }
  end
  
  has_one :address do
    link(:related) { api_contact_address_url(object.id) }
  end

  link(:self) { api_contact_url(object.id) }
  link(:kind) { api_kind_url(object.kind.id) }

  def attributes(*args)
    current_hash = super(*args)
    current_hash[:birthdate] = object.birthdate.to_time.iso8601 if object.birthdate.present?
    current_hash
  end
end
