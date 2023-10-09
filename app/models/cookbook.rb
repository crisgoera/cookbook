class Cookbook < ApplicationRecord
  belongs_to :user
  belongs_to :dish, required: false

  validates :name, presence: true, uniqueness: true, length: {
    maximum: 30,
    too_long: "maximum length is 50 characters.",
    minimum: 5,
    too_short: "inimum length is 5 characters"
  }
end
