class ChangeColumnAnswersCorrectDefault < ActiveRecord::Migration[6.1]
  def change
    change_column_default(:answers, :correct, 'no')
  end
end
