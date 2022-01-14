class Test < ApplicationRecord
  def self.titles(category)
    Test.select("title").joins("JOIN categories ON categories.category_id = tests.category_id AND categories.category_id = category").order(:title DESC)
  end
end
