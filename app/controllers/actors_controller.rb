class ActorsController < ApplicationController
 
  def index
    @list_of_actors = Actor.all

    render({:template => "actor_templates/index"})
  end

  def actor_details
    the_id = params.fetch("an_id")
    @the_actor = Actor.where({:id => the_id}).first

    @character = Character.where({:actor_id => the_id})

    # @movie = Movie.where({ :id => @character.movie_id })

    render({:template => "actor_templates/show"})
  end
end
