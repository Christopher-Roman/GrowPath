class PlantsController < ApplicationController

  def index
    plants = Plant.where(user_id: current_user[:id])
    render json: {status: 'Success!', message: 'Loaded all Plants', data:plants}, status: :ok
  end

  def show
    plant = Plant.find(params[:id])
    render json: { status: 'Success!', message: 'Here is the plant you were looking for.', data:plant}, status: :ok
  end

  def create
    plant = Plant.new(plant_params)
    if plant.save
      render json: {status: 'Success!', message: 'You have added a new plant to your garden!', data: plant}, status: :ok
    else
      render json: {status: 'Error!', message: 'Something went wrong. See error messaging.', data: plant.errors}, status: :unprocessable_entity
    end
  end

  def destroy
    plant = Plant.find(params[:id])
    if plant.destroy
      render json: {status: 'Success!', message: 'You have successfully pruned that plant from your garden', data:plant}
    else
      render json: {status: 'Success!', message: 'Your plant refused to leave... see errors.' data: plant.errors}, status: :unprocessable_entity
    end
  end

  def update
    plant = Plant.find(params[:id])
    if plant.update_attributes(plant_params)
      render json: {status: 'Success!', message: 'You have successfully updated that plant', data:plant}
    else
      render json: {status: 'Success!', message: 'Something went wrong. See error messaging.' data: plant.errors}, status: :unprocessable_entity

    end
  end

  private

  def plant_params 
  	params.permit(:plant_name, :plant_type, :flowering, :state_of_growth,
  				  :grow_medium, :clone, :planted, :seed_supplier, :plant_height,
  				  :plant_width
  				  )
  end

end
