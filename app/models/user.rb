require 'bcrypt'
class User < ApplicationRecord
  has_many :sites

  before_create :generate_api_key

  def self.get_user_from_api_key(plain_text_api_key, url)
    site = Site.find_by_url(url)
    return nil if site.nil?
    user = site.user
    users_encrypted_key = BCrypt::Password.new(user.encrypted_api_key)
    users_encrypted_key == plain_text_api_key ? user : nil
  end


  private
  def generate_api_key
    begin
      api_key = SecureRandom.hex(8)
      self.encrypted_api_key = BCrypt::Password.create(api_key)
      puts 'api_key ' + api_key # at some point return api_key to user - this will be their unhashed api_key....
      puts 'encrypted_api_key ' + encrypted_api_key
    end while self.class.exists?(encrypted_api_key: encrypted_api_key)
  end
end
