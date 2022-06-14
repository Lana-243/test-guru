class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: "User"

  has_many :questions, dependent: :destroy
  has_many :results, dependent: :destroy
  has_many :users, through: :results

  scope :easy, -> { where(level: 0..1) }
  scope :intermediate, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..Float::INFINITY) }

  validates :title, presence: true,
                    uniqueness: { scope: :level }
  validates :level, numericality: { only_integer: true, greater_than_or_equal_to: 0 },
                    uniqueness: { scope: :title }

  scope :titles_by_category, ->(category_title) {
    joins(:category)
      .where(category: { title: category_title })
      .order(title: :asc)
  }

  def self.title_names_by_category(category_title)
    titles_by_category(category_title).pluck(:title)
  end
end
