class AddUsersUserNullConstrain < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:users, :user, false)
  end
end
