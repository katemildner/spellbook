class Spell < ApplicationRecord
  validates :name, presence: true
  validates :level, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 9}
  validates :range, presence: true
  validates :school, presence: true
  validates :casting_time, presence: true
  validates :duration, presence: true
  validates :description_short, presence: true
  validates :description_long, presence: true
end
