class TrackingsController < ApplicationController
  def index
    trackings = Tracking.all
    render json: trackings
  end

  def show
    tracking = Tracking.where(tracking_num: params[:tracking_num])
    render json: tracking
  end

  def create
    new_tracking = Shuttle.new(lat: params[:lat], lng: params[:lng], toSeward: params[:dir], driver_id: params[:driver_id], shuttle_id: params[:shuttle_id])

    if new_tracking.save
      render json: new_tracking
    else
      render json: {"error": new_tracking.errors}
    end
  end

  def update
    found_tracking  = Tracking.where(id: params[:id])
    updated = found_tracking.update(lat: params[:new_lat], lng: params[:new_lng], toSeward: params[:new_dir], driver_id: params[:new_driver_id], shuttle_id: params[:shuttle_id])

    if updated
      render json: updated
    else
      render json: {"error": updated.errors}
    end
  end

  def destroy
    removed = Tracking.delete_all(id: params[:id])
    render json: {'Entry': removed}
  end
end
