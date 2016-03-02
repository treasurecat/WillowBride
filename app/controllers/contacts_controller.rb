class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      respond_to do |format|
        format.html { redirect_to whitefish_contact_path, notice: 'Thank you for your message. We will contact you soon!' }
        format.json
      end
    else
      respond_to do |format|
        format.html { redirect_to whitefish_contact_path, notice: 'Cannot send message.' }
        format.json
      end
      render :new
    end
  end
end