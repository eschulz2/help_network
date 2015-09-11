class PagesController < ApplicationController

  def chicago
    @courses = Course.where(:location => "Chicago")
  end

  def nyc
    @courses = Course.where(:location => "New York City")
  end

  def nyscholars
  	@visitor = Visitor.new
  end

end