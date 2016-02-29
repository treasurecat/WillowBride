class WhitefishController < ApplicationController
  def index
  	@store = Store.find_by_name("Whitefish, Montana")
  end

  def experience
  	@store = Store.find_by_name("Whitefish, Montana")
  end

  def explore
  	@store = Store.find_by_name("Whitefish, Montana")
  end

  def contact
  	@store = Store.find_by_name("Whitefish, Montana")
  end
end
