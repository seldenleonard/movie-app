class Actor < ApplicationRecord
  validates :first_name, presence: true, length: {minimum: 2}
  validates :last_name, presence: true, length: {minimum: 2}
  validates :known_for, presence: true
  validates :age, numericality: {greater_than: 13}
  validates :gender, inclusion: {in: ["Male", "male", "Female", "female"]}
  validates :gender, exclusion: {in: [nil]}
end
