class TupeloController < ApplicationController
  def index
  	@store = Store.find_by_name("Tupelo, Mississippi")
  end

  def experience
  	@store = Store.find_by_name("Tupelo, Mississippi")
  end

  def explore
  	@store = Store.find_by_name("Tupelo, Mississippi")
  end

  def contact
  	@store = Store.find_by_name("Tupelo, Mississippi")

    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    else
      flash.now[:error] = 'Cannot send message.'
    end
  end
end
