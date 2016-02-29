class WhitefishController < ApplicationController
  def index
  	@store = Store.find_by_name("Whitefish")
  end

  def experience
  	@store = Store.find_by_name("Whitefish")
  end

  def explore
  	@store = Store.find_by_name("Whitefish")
  end

  def contact
  	@store = Store.find_by_name("Whitefish")
  end
end
