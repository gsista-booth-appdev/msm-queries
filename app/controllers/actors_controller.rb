class ActorsController < ApplicationController
 
  def index
    @list_of_actors = Actor.all

    render({:template => "actor_templates/index"})
  end

  def actor_details
    the_id = params.fetch("an_id")
    @the_actor = Actor.where({:id => the_id}).first
    
    render({:template => "actor_templates/show"})
  end
end
