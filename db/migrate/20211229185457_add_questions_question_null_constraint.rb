class AddQuestionsQuestionNullConstraint < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:questions, :question, false)
  end
end
