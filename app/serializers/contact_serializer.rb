class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :birthdate

  def attributes(*args)
    current_hash = super(*args)
    current_hash[:birthdate] = (I18n.l(object.birthdate) if object.birthdate.present?)
    current_hash
  end
end
