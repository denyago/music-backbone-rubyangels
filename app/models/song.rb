class Song < ActiveRecord::Base
  attr_accessible :artist, :file, :name
end
