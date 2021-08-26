class Task < ApplicationRecord
  　　validates :name, presence: true
  　　validates :user, presence: true
end
