class PlantsController < ApplicationController

  before_action :set_garden, only: :create

  def create
    # ourapp/gardens/2/plants
    @plant = Plant.new(plant_params)
    @plant.garden = @garden
    if @plant.save
      redirect_to garden_path(@garden) # /gardens/4
    else
      render 'gardens/show'
    end
  end

  def destroy
    # DELETE /plants/2
    plant_id = params[:id]
    @plant = Plant.find(plant_id)
    @plant.destroy
    # The plant is not on the db anymore
    # @plant.id == 7
    redirect_to garden_path(@plant.garden)
  end


  def set_garden
    @garden = Garden.find(params[:garden_id])
  end

  def plant_params
    params.require(:plant).permit(:name, :image_url)
  end

end
