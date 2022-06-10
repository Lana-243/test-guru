class User < ApplicationRecord
  has_many :created_tests, class_name: "Test", foreign_key: "author_id", dependent: :destroy
  has_many :results, dependent: :destroy
  has_many :tests, through: :results

  def tests_by_level(level)
    tests.where(level: level)
  end
end
