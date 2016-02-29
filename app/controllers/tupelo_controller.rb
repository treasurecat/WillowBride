class TupeloController < ApplicationController
  def index
  	@store = Store.find_by_name("Tupelo")
  end
end
