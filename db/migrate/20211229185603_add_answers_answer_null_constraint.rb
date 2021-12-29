class AddAnswersAnswerNullConstraint < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:answers, :answer, false)
  end
end
