class GuestsController < ApplicationController
  before_action :set_guest, only: [:show]

  def index
    @guests = Guest.all
  end

  def show
    @guest = Guest.find(params[:id])
  end

  private

  def guest_params
    params.require(:guest).permit(:name, :image_url)
  end

  def set_guest
    @guest = Guest.find(params[:id])
  end

end
