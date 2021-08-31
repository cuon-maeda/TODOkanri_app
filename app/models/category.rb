class Category < ApplicationRecord
  validates :name, { presence: true }
  has_many :tasks_categories
  has_many :tasks, through: :tasks_categories   
end
