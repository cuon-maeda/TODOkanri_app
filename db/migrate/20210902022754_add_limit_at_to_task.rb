class AddLimitAtToTask < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :limit_at, :date
    remove_column :tasks, :deadline_at, :datetime
  end
end
