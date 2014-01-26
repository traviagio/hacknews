class LinksController < ApplicationController

	before_action :authenticate_user!
	
	def submit
		@link = Link.new
	end

	def show
		@link = Link.find(params[:id])
	end

	def index
		@links = Link.all
	end

	# def create
	# 	@links = Link.new(params[:post])
	#   @link.save
	#   redirect_to @link
	# end

	def create
	  @link = Link.new(link_params)
	  @link.save
	  redirect_to '/links'
	end
 
	private
	  def link_params
	    params.require(:link).permit(:title, :text, :url)
	  end

end

