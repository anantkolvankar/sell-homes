class HomeController < ApplicationController
	#before_action :authenticate_person!
  def index
  	@properties = Property.limit(5).order('id desc')
  end
  def register_as
  end

  def login_as
  end
end
