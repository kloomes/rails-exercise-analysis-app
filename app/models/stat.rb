class Stat < ApplicationRecord
  belongs_to :user

  validates :date, presence: true
  validates :time, presence: true
  validates :weight, presence: true
  validates :body_fat, presence: true
end
