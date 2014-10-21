class User < ActiveRecord::Base
  has_many :songs
  has_many :microposts

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :email, :password, :username, :name, :favgenre, :favsong, :favartist, :favalbum, :favlyric, :favvideo
  
end
