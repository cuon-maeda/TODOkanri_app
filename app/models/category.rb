class Category < ApplicationRecord
  validates :name, { presence: true }
  belongs_to :user
  has_many :tasks_categories, dependent: :destroy
  has_many :tasks, through: :tasks_categories
end
