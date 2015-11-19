class Subject < ActiveRecord::Base
  has_many :topics
  has_many :tutors, through: :topics
end
