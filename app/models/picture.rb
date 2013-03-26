class Picture < ActiveRecord::Base
	attr_accessible :title, :artist, :url, :copyrighted #Whitelist that allows mass-assignment for the attributes title and artist
	#don't confuse with attr_acccessor

  #validation!
  validates :title, :presence => true
  validates :url, :presence => true

  

end
