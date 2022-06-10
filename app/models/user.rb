class User < ApplicationRecord
  has_many :created_tests, class_name: "Test", foreign_key: "author_id", dependent: :destroy
  has_many :results, dependent: :destroy
  has_many :tests, through: :results

  validates :name, presence: true
  validates :name, uniqueness: { scope: :level }
  validates :email, presence: true
  validates :level, numericality: { only_integer: true, greater_than: 0 }

  def tests_by_level(level)
    tests.where(level: level)
  end
end
