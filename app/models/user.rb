class User < ApplicationRecord
  has_many :tests, foreign_key: "author_id", dependent: :destroy
  has_many :results, dependent: :destroy
  has_many :tests, through: :results, dependent: :destroy

  def tests_by_level(level)
    Result
    .joins(:tests)
    .where(results: { user_id: self.id })
    .where(tests: { level: level })
  end
end
