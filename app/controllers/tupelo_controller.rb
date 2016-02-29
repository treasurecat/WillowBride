class TupeloController < ApplicationController
  def index
  	@store = Store.find_by_name("Tupelo, Mississippi")
  end

  def experience
  	@store = Store.find_by_name("Tupelo, Mississippi")
  end

  def explore
  	@store = Store.find_by_name("Tupelo, Mississippi")
  end

  def contact
  	@store = Store.find_by_name("Tupelo, Mississippi")
  end
end
