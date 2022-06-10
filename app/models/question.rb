class Question < ApplicationRecord
  belongs_to :test

  validates :title, presence: true

  has_many :answers, dependent: :destroy
end
