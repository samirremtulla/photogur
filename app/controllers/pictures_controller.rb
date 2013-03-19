# pictures_controller.rb

class PicturesController < ApplicationController

	def index
		@greeting = "Ma Dawgs"
		@pictures = ['http://serpentorslair.com/wp-content/uploads/2013/02/megan-fox-wallpaper-16.jpg',
			'http://gallery.rennlist.com/albums/album441/bitch.gif',
			'http://i.imgur.com/Hebp5.jpg']	
	end


end
