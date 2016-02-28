class WhitefishController < ApplicationController
  def index
  	@store = Store.find_by_name("Whitefish")
  end
end
