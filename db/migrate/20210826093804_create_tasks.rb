class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name, null: false, comment: 'タスクの内容'
      t.string :user, null: false, comment: 'ユーザーの名前'
      t.text :ditail, comment: 'タスクの詳細'
      t.datatime :deadline_at, comment: '終了期限'
      t.integer :priority, comment: '優先順位'
      t.integer :status, comment: 'ステータス'

      t.timestamps
    end
  end
end
