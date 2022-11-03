class DirectorsController < ApplicationController

  def index
  render({:template => "director_templates/index"})
  end
  
end
