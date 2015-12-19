class HomeController < ApplicationController
	#before_action :authenticate_person!
  def index
  	@products = Product.limit(5).order('id desc')
  end
end
