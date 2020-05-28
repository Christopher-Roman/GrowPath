class HarvestController < ApplicationController

  def index
    harvests = Harvest.where(plant_id: params[:plant_id])
    render json: {status: 'Success!', message: 'Loaded all harvests', data:harvests}, status: :ok
  end

  def show
    harvest = Harvest.find(params[:id])
    render json: { status: 'Success!', message: 'Here is the harvest you were looking for.', data: harvest}, status: :ok
  end

  def create
  	harvest = Harvest.new(harvest_params)
    if harvest.save
      render json: {status: 'Success!', message: 'You have added a new harvest about your garden!', data: harvest}, status: :ok
    else
      render json: {status: 'Error!', message: 'Something went wrong. See error messaging.', data: harvest.errors}, status: :unprocessable_entity
    end
  end
  
    def destroy
    harvest = Harvest.find(params[:id])
    if harvest.destroy
      render json: {status: 'Success!', message: 'harvest was successfully deleted.', data:harvest}
    else
      render json: {status: 'Error!', message: 'Your harvest refused to leave... see errors.', data: harvest.errors}, status: :unprocessable_entity
    end
  end

  def update
    harvest = Harvest.find(params[:id])
    if harvest.update_attributes(harvest_params)
      render json: {status: 'Success!', message: 'You have successfully updated that harvest', data:harvest}
    else
      render json: {status: 'Error!', message: 'Something went wrong. See error messaging.', data: harvest.errors}, status: :unprocessable_entity

    end
  end

  private

  def harvest_params
    params.permit(:harvest_type, :harvest_yield)
  end
end
