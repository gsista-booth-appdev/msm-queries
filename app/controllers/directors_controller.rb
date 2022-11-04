class DirectorsController < ApplicationController

  def index
  @list_of_directors = Director.all

  render({:template => "director_templates/index"})
  end
  
  def wisest
    @oldest = Director.where.not({:dob => nil }).order({:dob => :asc }).first

    render({:template => "director_templates/eldest"})
  end

  def director_details
    the_id = params.fetch("an_id")

    @the_director = Director.where({ :id => the_id }).first

    render({:template => "director_templates/show"})
  end
end
