class Subject < ActiveRecord::Base
  has_many :topics
  has_many :tutors, through: :topics

  def self.search(search)
    if (search.present?)
      Subject.where('expertise ILIKE ?', "%#{search}%")
    else
      false
    end
  end
end
