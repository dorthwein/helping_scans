class ProfilesController < ApplicationController
  def index
  	@profiles = User.all
  	respond_to do |format|      
  		format.html 
  	end
  end
  def show
  	@profile = User.find(params[:id])
  end
end