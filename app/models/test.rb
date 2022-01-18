class Test < ApplicationRecord
  def self.titles_by_category(category_title)
    joins("JOIN categories ON categories.category_id = tests.category_id")
    .where(categories: { title: category_title })
    .pluck(tests: { title: })
    .order(tests: { title: :desc })
  end
end
