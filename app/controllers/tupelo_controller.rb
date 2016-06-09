class TupeloController < ApplicationController

  @@city = "Tupelo, Mississippi"

  def index
    @store = Store.find_by_name(@@city)
  end

  def experience
    @store = Store.find_by_name(@@city)
  end

  def explore
    @store = Store.find_by_name(@@city)
    @designers = Designer.where("location1 = ? OR location2 = ? OR location3 = ?", @@city, @@city, @@city)
  end

  def contact
    @store = Store.find_by_name(@@city)
    @contact = Contact.new(params[:contact])
  end

  def designer
    @store = Store.find_by_name(@@city)
    @designer = Designer.find_by_name(params[:name].gsub('_', ' '))
    @dresses = Dress.where(designer_id: @designer, location: @@city)
  end
end
