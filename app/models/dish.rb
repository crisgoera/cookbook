class Dish < ApplicationRecord
  has_many :users, through: :cookbook
end
