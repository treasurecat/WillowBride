class NashvilleController < ApplicationController
   def index
  	@store = Store.find_by_name("Nashville, Tennessee")
  end

  def experience
  	@store = Store.find_by_name("Nashville, Tennessee")
  end

  def explore
  	@store = Store.find_by_name("Nashville, Tennessee")
  end

  def contact
  	@store = Store.find_by_name("Nashville, Tennessee")

    @contact = Contact.new(params[:contact])
  end

end
