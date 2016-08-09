class AdventurersController < ApplicationController

  def index
    @adventurers = current_user.adventurers
    @races = Race.all
  end

  def new
    @adventurer = Adventurer.new
    @races = Race.all
    @classes = Classe.all
  end

  def create
    adventurer = Adventurer.new(params_adventurer)
    adventurer.user_id = current_user.id
    if adventurer.save
      redirect_to adventurers_path
    else
      render 'new'
    end
  end

  def show
		@adventurer = Adventurer.find(params[:id])
    @race = Race.find(@adventurer.race_id)
	end

  def destroy
    adventurer = Adventurer.find(params[:id])
    adventurer.destroy
    redirect_to adventurers_path
  end

  def stamina
    Adventurer.find(params[:id]).stamina
    redirect_to adventurer_path
  end
private

  def params_adventurer
    params.require(:adventurer).permit(:pseudo, :race_id, :classe_id)
  end
end
