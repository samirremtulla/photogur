class Picture < ActiveRecord::Base
	attr_accessible :title, :artist, :url #Whitelist that allows mass-assignment for the attributes title and artist
	#don't confuse with attr_acccessor
end
