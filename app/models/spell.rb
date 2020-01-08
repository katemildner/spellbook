class Spell < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :level, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 9}
  validates :range, presence: true
  validates :school, presence: true
  validates :casting_time, presence: true
  validates :duration, presence: true
  validates :description_short, presence: true
  validates :description_long, presence: true

  has_and_belongs_to_many :spell_lists

  def to_label
    "#{name} | #{level} | #{description_short}"
  end
end
