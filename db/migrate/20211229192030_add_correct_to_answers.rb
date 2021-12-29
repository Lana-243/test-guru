class AddCorrectToAnswers < ActiveRecord::Migration[6.1]
  def change
    add_column :answers, :correct, :string
  end
end
