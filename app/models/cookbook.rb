class Cookbook < ApplicationRecord
  belongs_to :user
  belongs_to :dish

  validates :name, presence: true, uniqueness: true, length: {
    maximum: 50,
    too_long: "Maximum name length is 50 characters."
  }
end
