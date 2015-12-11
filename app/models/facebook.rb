require "open-uri"

class Facebook

  def self.profile(token)
    url = 'https://graph.facebook.com/me'
    url += '?fields=id,name,email,first_name,last_name,locale,gender'
    url += '&access_token=' + token
    encoded_url = URI::encode(url)
    open(encoded_url).read
  end
end
