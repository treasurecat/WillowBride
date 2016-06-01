class WhitefishController < ApplicationController
  def index
  	@store = Store.find_by_name("Whitefish, Montana")
  end

  def experience
  	@store = Store.find_by_name("Whitefish, Montana")
  end

  def explore
  	@store = Store.find_by_name("Whitefish, Montana")
    # replace Store with Designer
    @designers = Store.all
  end

  def contact
  	@store = Store.find_by_name("Whitefish, Montana")
  end

  def designer
    @store = Store.find_by_name("Whitefish, Montana")
    @designer = "Jenny Yoo"
    @dresses = Store.all
  end
end
