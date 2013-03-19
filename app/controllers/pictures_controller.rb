# pictures_controller.rb

class PicturesController < ApplicationController

	def index
		@greeting = "Ma Dawg"
		@pictures = ['http://notfunny.co/wp-content/uploads/2012/11/ElwoodUglyDog-funny-ugly-dogs.jpg',
			'http://gallery.rennlist.com/albums/album441/bitch.gif',
			'http://i.imgur.com/Hebp5.jpg']	
	end


end
