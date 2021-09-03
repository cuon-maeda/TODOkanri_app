class AddDetailToTask < ActiveRecord::Migration[6.1]
  def change
    remove_column :tasks, :ditail, :text
    add_column :tasks, :detail, :text
  end
end
