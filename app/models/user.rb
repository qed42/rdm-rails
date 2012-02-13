class User < ActiveRecord::Base

  # authlogic configurations
  acts_as_authentic do |auth|
    auth.validates_uniqueness_of_email_field_options :case_sensitive => false
    auth.require_password_confirmation = false
    auth.crypto_provider = Authlogic::CryptoProviders::MD5
  end

  has_many :posts
  has_many :comments

  def self.find_by_username_or_email(login)
    User.find_by_username(login) || User.find_by_email(login)
  end

  def created_at
    read_attribute(:created_at).strftime("%b %d, %Y %I:%M %P") unless self.new_record?
  end

end
