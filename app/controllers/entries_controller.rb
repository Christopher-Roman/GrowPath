class EntriesController < ApplicationController

  def index
    entries = Entry.where(plant_id: params[:plant_id])
    render json: {status: 'Success!', message: 'Loaded all entries', data:entrys}, status: :ok
  end

  def show
    entry = Entry.find(params[:id])
    render json: { status: 'Success!', message: 'Here is the Entry you were looking for.', data: entry}, status: :ok
  end

  def create
  	entry = Entry.new(entry_params)
    if entry.save
      render json: {status: 'Success!', message: 'You have added a new entry about your garden!', data: entry}, status: :ok
    else
      render json: {status: 'Error!', message: 'Something went wrong. See error messaging.', data: entry.errors}, status: :unprocessable_entity
    end
  end
  
    def destroy
    entry = Entry.find(params[:id])
    if entry.destroy
      render json: {status: 'Success!', message: 'Entry was successfully deleted.', data:entry}
    else
      render json: {status: 'Error!', message: 'Your entry refused to leave... see errors.', data: entry.errors}, status: :unprocessable_entity
    end
  end

  def update
    entry = Entry.find(params[:id])
    if entry.update_attributes(entry_params)
      render json: {status: 'Success!', message: 'You have successfully updated that entry', data:entry}
    else
      render json: {status: 'Error!', message: 'Something went wrong. See error messaging.', data: entry.errors}, status: :unprocessable_entity

    end
  end

  def entry_type_search str
    entries = Entry.where(plant_id: params(:plant_id), entry_type: params[:query])
    render json: {status: 'Success', message: 'Here are your results', data: entries}, status: :ok
  end


  private

  def entry_params
  	params.permit(:entry_type, :adhoc_notes, :growth_phase, :overall_health, 
  				  :water_ph, :water_volume, :ppm, :runoff_amount, :runoff_ph,
  				  :fertilizer_used, :leaves_removed, :flowers_removed, :leaf_health, 
  				  :flower_health, :pests)
  end

end
