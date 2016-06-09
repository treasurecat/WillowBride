class WhitefishController < ApplicationController
  def index
  	@store = Store.find_by_name("Whitefish, Montana")
  end

  def experience
  	@store = Store.find_by_name("Whitefish, Montana")
  end

  def explore
  	@store = Store.find_by_name("Whitefish, Montana")
    @designers = Designer.where("location1 = ? OR location2 = ? OR location3 = ?", "Whitefish, Montana", "Whitefish, Montana", "Whitefish, Montana")
  end

  def contact
  	@store = Store.find_by_name("Whitefish, Montana")
  end

  def designer
    @store = Store.find_by_name("Whitefish, Montana")
    @designer = Designer.find_by_name(params[:name].gsub('_', ' '))
    @dresses = Dress.where(designer_id: @designer, location: "Whitefish, Montana")
  end
end
