class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  validates :name, presence: true
  
  validates :password, length: {minimum: 6}, presence: true
  validates :password, confirmation: true
  
  emailFormatValidation = /[a-z.-]+@[a-z \d -.]+[.][a-z]+/i
  validates :email, format: {with: emailFormatValidation}
  validates :email, uniqueness: true
  
end
