# pictures_controller.rb

class PicturesController < ApplicationController

	# before_filter :load_pictures

	def index
		@pictures = Picture.all
	end


	def show
		# id comes from the route
		@picture = Picture.find params[:id].to_i

	end

	def new
		@picture = Picture.new
		# @picture.title = "Default"
	end

	def create

		@picture = Picture.new(params[:picture])
		
		if @picture.save
			redirect_to pictures_path
		else
			#if there was an error on the form
			flash.now[:error] = "Can't be blank"
			render :new
		end


		# @picture = Picture.new
		# @picture.url = params[:url]
		# @picture.title = params[:title]
		# @picture.artist = params[:artist]
		# success = @picture.save	

		# if success
		# 	redirect_to '/pictures' # pictures_path <= this is complicated, we'll get into it later
		# end

		# render :text => "Saving a picture. URL: #{params[:url]} Artist: #{params[:artist]} Title: #{params[:title]}" 
	
	end

	def edit
		@picture = Picture.find(params[:id])
	end

	def update
		@picture = Picture.find(params[:id])
		if @picture.update_attributes(params[:picture])	
			redirect_to @picture
		else
			render :edit
		end
	end

	def destroy
		@picture = Picture.find(params[:id])
		@picture.destroy
		redirect_to pictures_path
	end




	# def load_pictures


		# @pictures = [
		# 	{
		# 		:title => "Megan Fox",
		# 		:artist => "Samir",
		# 		:url => 'http://serpentorslair.com/wp-content/uploads/2013/02/megan-fox-wallpaper-16.jpg'},
		# 	{
		# 		:title => "Quit Bitchin",
		# 		:artist => "Unknown",
		# 		:url => 'http://gallery.rennlist.com/albums/album441/bitch.gif'},
		# 	{
		# 		:title => "Jenga",
		# 		:artist => "Unknown",
		# 		:url => 'http://i.imgur.com/Hebp5.jpg'}
		# ]	
	# end


end
