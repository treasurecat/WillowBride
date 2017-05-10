require 'instagram'

class NashvilleController < ApplicationController

  @@city = "Nashville, Tennessee"

  def index
  	@store = Store.find_by_name(@@city)

    client = Instagram.client(:access_token => '1517317818.1677ed0.daa3778c68b149cc82e9608c931a59d6')
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
