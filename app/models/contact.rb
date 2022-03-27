class Contact < ApplicationRecord
  belongs_to :kind

  validates :name, :email, presence: true

  def locale
    I18n.default_locale
  end

  def as_json(options={})
    super(root: true, include: { kind: { only: :description } }, methods: :locale)
  end
end
