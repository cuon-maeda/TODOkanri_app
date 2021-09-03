class Task < ApplicationRecord
  validates :name, { presence: true }
  validates :user, { presence: true }
  validates :status, { presence: true }
  enum status: {
    untouched: 0,
    working: 1,
    done: 2
  }
  enum priority: {
    hight: 0,
    middum: 1,
    low: 2
  }
  has_many :tasks_categories, dependent: :destroy
  has_many :categories, through: :tasks_categories
end
