# pictures_controller.rb

class PicturesController < ApplicationController

	before_filter :load_pictures

	#def index
	#end


	def show
		@picture = @pictures[params[:id].to_i]

	end

	def new
	end
	

	def load_pictures
		@pictures = [
			{
				:title => "Megan Fox",
				:artist => "Samir",
				:url => 'http://serpentorslair.com/wp-content/uploads/2013/02/megan-fox-wallpaper-16.jpg'},
			{
				:title => "Quit Bitchin",
				:artist => "Unknown",
				:url => 'http://gallery.rennlist.com/albums/album441/bitch.gif'},
			{
				:title => "Jenga",
				:artist => "Unknown",
				:url => 'http://i.imgur.com/Hebp5.jpg'}
		]	
	end


end
