class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name, null: false, comment: 'カテゴリーの内容'

      t.timestamps
    end
  end
end
