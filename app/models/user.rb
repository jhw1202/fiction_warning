class User < ActiveRecord::Base
  attr_accessible :email, :fullname, :password, :password_confirmation, :username

  before_save do |user|
    user.email    = email.downcase
    user.username = username.downcase
  end

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,
    :presence   => true,
    :format     => { :with => VALID_EMAIL_REGEX },
    :uniqueness => { :case_sensitive => false }
  validates :password,
    :presence   => true,
    :length     => { :minimum => 6 }
  validates :username,
    :presence   => true,
    :length     => { :maximum => 24 },
    :uniqueness => { :case_sensitive => false }
end
