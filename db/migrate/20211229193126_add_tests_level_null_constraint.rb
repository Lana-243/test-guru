class AddTestsLevelNullConstraint < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:tests, :level, false)
  end
end
