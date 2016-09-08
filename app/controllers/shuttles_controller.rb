class ShuttlesController < ApplicationController
  def index
    shuttles = Shuttle.all
    render json: shuttles
  end

  def show
    shuttle = Shuttle.where(shuttle_num: params[:shuttle_num])
    render json: shuttle
  end

  def create
    new_shuttle = Shuttle.new(shuttle_num: params[:shuttle_num])

    if new_shuttle.save
      render json: new_shuttle
    else
      render json: {"error": new_shuttle.errors}
    end
  end

  def update
    found_shuttle  = Shuttle.where(shuttle_num: params[:shuttle_num])
    updated = found_shuttle.update(shuttle_num: params[:new_shuttle_num])

    if updated
      render json: updated
    else
      render json: {"error": updated.errors}
    end
  end

  def destroy
    removed = Shuttle.delete_all(shuttle_num: params[:shuttle_num])
    render json: {'Shuttle': removed}
  end
end
