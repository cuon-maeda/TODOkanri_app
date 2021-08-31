class CreateTasksCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks_categories do |t|
      t.references :task, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
