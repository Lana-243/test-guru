class Test < ApplicationRecord
  def self.titles_by_category(category)
    Test.joins("JOIN categories ON categories.category_id = tests.category_id").where(categories.title: category).pluck(:tests.title).order(title: :desc)
  end
end
