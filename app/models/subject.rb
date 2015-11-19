class Subject < ActiveRecord::Base
  has_many :topics
  has_many :tutors, through: :topics

  def self.search(search)
    if (search.present?)
      Subject.where("expertise LIKE ?", "%#{search}%")
    else
      nil
    end
  end
end
