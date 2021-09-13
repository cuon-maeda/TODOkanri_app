class RemoveUserToTask < ActiveRecord::Migration[6.1]
  def change
    remove_column :tasks, :user, :string
  end
end
