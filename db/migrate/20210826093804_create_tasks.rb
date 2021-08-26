class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t| # タスクモデル
      t.string :name, null: false  # タスクの内容
      t.string :user, null: false  # ユーザーの名前

      t.timestamps
    end
  end
end
