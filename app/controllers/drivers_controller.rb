class DriversController < ApplicationController

  def index
  drivers = Driver.all
  render json: drivers
end

def show
  driver = Driver.where(last_name: params[:last_name ])
  render json: driver
end

def create
  new_driver = Driver.new(first_name: params[:first_name],last_name: params[:last_name])
  if new_driver.save
    render json: new_driver
  else
    render json: {"error": new_driver.errors}
  end
end

def update
  found_driver  = Driver.where(id: params[:id])
  updated = found_driver.update(first_name: params[:new_first_name],last_name: params[:new_last_name])

  if updated
    render json: updated
  else
    render json: {"error": updated.errors}
  end
end

def destroy
  removed = Driver.delete_all(id: params[:id])
  render json: {'Driver': removed}
end

end
