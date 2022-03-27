class Contact < ApplicationRecord
  belongs_to :kind

  validates :name, :email, presence: true

  def as_json(options={})
    super(root: true, include: { kind: { only: :description } })
  end
end
