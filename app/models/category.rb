class Category < ApplicationRecord
  has_many :tests, dependent: :destroy

  validates :title, presence: true

  default_scope { order(title: :asc) }

  scope :titles_by_category, ->(category_title) { where("title = ?", category_title) }

end
