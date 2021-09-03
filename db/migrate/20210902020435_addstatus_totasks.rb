class AddstatusTotasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :ditail, :text
    add_column :tasks, :limit_at, :date
    add_column :tasks, :priority, :int
    add_column :tasks, :status, :int
    remove_column :tasks, :deadline_at, :datetime
  end
end
