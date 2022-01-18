class Test < ApplicationRecord
  has_many :questions
  belongs_to :category
  belongs_to :user
  has_many :results
  has_many :users, through: :results
  def self.titles_by_category(category_title)
    joins("JOIN categories ON categories.category_id = tests.category_id")
    .where(categories: { title: category_title })
    .pluck(:title)
    .order(title: :desc)
  end
end
