class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: "User", foreign_key: :author_id

  has_many :questions, dependent: :destroy
  has_many :results, dependent: :destroy
  has_many :users, through: :results

  scope :easy, -> { where(level: 0..1) }
  scope :intermediate, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..Float::INFINITY) }

  validates :title, presence: true

  #todo title from categories
  scope :titles_by_category, ->(category_title) { where("title = ?", category_title) }


  # def self.titles_by_category(category_title)
  #   joins(:category)
  #     .where(category: { title: category_title })
  #   .order(title: :asc)
  #   .pluck(:title)
  # end
end
