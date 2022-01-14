class Test < ApplicationRecord
  def self.titles(category)
    Test.select("title").joins("JOIN categories ON categories.category_id = tests.category_id AND categories.category_id = " + category_to_s).order(title: :desc)
  end
end
