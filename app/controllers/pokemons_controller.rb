class PokemonsController < ApplicationController
  def capture
  	pokemon_id = params[:id]
  	caught_pokemon = Pokemon.find(pokemon_id)
  	caught_pokemon.trainer_id = current_trainer.id
  	caught_pokemon.save!
  	redirect_to root_path
  end
  def damage
  	pokemon_id = params[:id]
  	target_pokemon = Pokemon.find(pokemon_id)
  	target_pokemon.health-=10
  	target_pokemon.health <= 0 ? target_pokemon.destroy : target_pokemon.save!
  	redirect_to trainer_path(current_trainer.id)
  end
  def create
  	@pokemon = Pokemon.new
    @pokemon.name = params[:pokemon][:name]
  	@pokemon.health = 100
  	@pokemon.level = 1
  	@pokemon.trainer_id = current_trainer.id
  	if @pokemon.save
  	  redirect_to trainer_path(current_trainer.id)
  	else
  	  flash[:error] = @pokemon.errors.full_messages.to_sentence
  	  redirect_to new_pokemon_path
  	end
  end
  def new
  	@pokemon = Pokemon.new
  end

end 
