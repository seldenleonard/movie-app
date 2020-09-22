class Movie < ApplicationRecord
  
  validates :title, presence: true
  validates :year, length: {is: 4}
  validates :plot, length: {minimum: 10}
  validates :director, length: {maximum: 20}
  validates :english, inclusion: {in: [true, false]}
  validates :english, exclusion: {in: [nil]}

  has_many :actors

end