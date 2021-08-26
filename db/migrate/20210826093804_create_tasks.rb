class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name, null: false, comment: 'タスクの内容'
      t.string :user, null: false, comment: 'ユーザーの名前'

      t.timestamps
    end
  end
end
