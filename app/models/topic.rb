class Topic < ActiveRecord::Base
  belongs_to :tutor
  belongs_to :subject
end