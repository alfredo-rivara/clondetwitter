class Tweet < ApplicationRecord
  validates :description, presence: true
  validates :username, presence: true
end
