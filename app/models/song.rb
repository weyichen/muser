class Song < ActiveRecord::Base
  attr_accessible :artURL, :artist, :genre, :track, :year, :ytURL
end
