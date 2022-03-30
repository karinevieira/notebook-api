class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :birthdate

  belongs_to :kind do
    link(:kind) { kind_path(object.kind.id) }
  end
  
  has_many :phones
  has_one :address

  link(:self) { contact_path(object.id) }

  def attributes(*args)
    current_hash = super(*args)
    current_hash[:birthdate] = object.birthdate.to_time.iso8601 if object.birthdate.present?
    current_hash
  end
end
