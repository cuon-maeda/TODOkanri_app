class Task < ApplicationRecord
  validates :name, { presence: true }
  validates :user, { presence: true }
  has_many :tasks_categories
  has_many :categories, through: :tasks_categories
end
