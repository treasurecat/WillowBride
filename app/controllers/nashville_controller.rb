require 'instagram'

class NashvilleController < ApplicationController

  @@city = "Nashville, Tennessee"

  def index
  	@store = Store.find_by_name(@@city)

    client = Instagram.client(:access_token => '3015172621.d859002.dadf9728deec46c1b1fa8bba731a39e8')
    @insta = client.present? ? client.user_recent_media : ''
  end

  def experience
  	@store = Store.find_by_name(@@city)
  end

  def explore
    @store = Store.find_by_name(@@city)
    @designers = Designer.where("location1 = ? OR location2 = ? OR location3 = ?", @@city, @@city, @@city).order("created_at ASC")
  end

  def contact
  	@store = Store.find_by_name(@@city)
    @contact = Contact.new(params[:contact])
  end

  def designer
    @store = Store.find_by_name(@@city)
    @designer = Designer.find_by_name(params[:name].gsub('_', ' '))
    @city = @@city
  end

  def test
    @store = Store.find_by_name(@@city)
    @designers = Designer.where("location1 = ? OR location2 = ? OR location3 = ?", @@city, @@city, @@city)
  end

end
