require 'open-uri'

class Tutor < ActiveRecord::Base
  validates :password, length: { minimum: 8 }
  validates :username, presence: true

  has_many :topics
  has_many :subjects, through: :topics
  has_many :ratings
  has_many :messages

  has_secure_password

  # This is necessary for Facebook Oauth
  def self.profile(token)
    url = 'https://graph.facebook.com/me'
    url += '?fields=id,name,email,first_name,last_name,locale,gender'
    url += '&access_token=' + token
    encoded_url = URI::encode(url)
    open(encoded_url).read
  end

end
