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

  scope :by_level_and_name, -> { order(:level, :name) }
  scope :level_zero, -> { where ("level = 0") }
  scope :level_one, -> { where ("level = 1") }
  scope :level_two, -> { where ("level = 2") }
  scope :level_three, -> { where ("level = 3") }
  scope :level_four, -> { where ("level = 4") }
  scope :level_five, -> { where ("level = 5") }
  scope :level_six, -> { where ("level = 6") }
  scope :level_seven, -> { where ("level = 7") }
  scope :level_eight, -> { where ("level = 8") }
  scope :level_nine, -> { where ("level = 9") }
end
