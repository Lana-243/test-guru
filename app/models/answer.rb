class Answer < ApplicationRecord
  belongs_to :question

  validates :title, presence: true, if: :question_id.answers.count
  validate :answers_count, on: :create

  scope :correct, -> { where(correct: true) }

  private

  def answers_count
    errors.add(:title, 'One question can only have 1 to 4 answers.') if question.answers.count >= 4
  end
end
