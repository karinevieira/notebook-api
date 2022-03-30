class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :birthdate

  belongs_to :kind
  has_many :phones
  has_one :address

  def attributes(*args)
    current_hash = super(*args)
    current_hash[:birthdate] = object.birthdate.to_time.iso8601 if object.birthdate.present?
    current_hash
  end
end
