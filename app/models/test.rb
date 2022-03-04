class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: "User", foreign_key: :author_id

  has_many :questions, dependent: :destroy
  has_many :results, dependent: :destroy
  has_many :users, through: :results, dependent: :destroy
  
  def self.titles_by_category(category_title)
    joins(:categories)
    .where(categories: { title: category_title })
    .pluck(:title)
    .order(title: :desc)
  end
end
