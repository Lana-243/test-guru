class Answer < ApplicationRecord
  belongs_to :question

  #todo check answer validation

  validates :title, presence: true, if: :question_id.answers.count
  validates :answer, presence: true

  scope :correct, -> { where(correct: true) }
end
