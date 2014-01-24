class LinksController < ApplicationController
	def new
	end

	def show
	end

	def create
		render text: params[:links].inspect
	end
end
