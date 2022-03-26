class Contact < ApplicationRecord
  belongs_to :kind

  def as_json(options={})
    super(root: true, include: { kind: { only: :description } })
  end
end
