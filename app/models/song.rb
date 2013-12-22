class Song < ActiveRecord::Base
  belongs_to :user
  attr_accessible :artURL, :artist, :album, :genre, :track, :year, :ytURL, :user, :rating
  
  scope :rating5, -> { where('rating = 5')}
  scope :rating42, -> { where('rating = 4 OR rating = 3 OR rating = 2')}
  scope :rating1, -> { where('rating = 1')}
  
  # track and artist are minimal required attributes
  validates :track, presence: true
  validates :artist, presence: true
  
  #validates :ytURL, format: { with: /^http:\/\/www.youtube.com\/watch/i , on: :create }
end