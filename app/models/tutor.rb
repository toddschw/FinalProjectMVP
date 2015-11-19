class Tutor < ActiveRecord::Base
  has_many :topics
  has_many :subjects, through: :topics
  has_many :ratings
end
