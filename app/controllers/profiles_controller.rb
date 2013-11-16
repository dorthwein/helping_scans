class ProfilesController < ApplicationController
  before_filter :authenticate_user!
  def index
  	@profiles = User.all
	respond_to do |format|      
		format.html 
	end
  end
end
