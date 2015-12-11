class Topic < ActiveRecord::Base # this name is confusing. It should be tutor subjects
  belongs_to :tutor
  belongs_to :subject
end
