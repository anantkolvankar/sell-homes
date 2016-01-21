class HomeController < ApplicationController
	#before_action :authenticate_person!
  def index
  	@properties = Property.limit(12).order('id desc')
  end
  def register_as
  end

  def login_as
  end
end
