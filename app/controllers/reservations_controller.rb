class ReservationsController < ApplicationController
  before_action :set_user, only: [:create, :destroy]
  before_action :set_reservation, only: [:destroy]

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = @user
    if @reservation.save
      redirect_to reservation_path(@reservation)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @reservation.destroy
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end
  def reservation_params
    params.require(:reservation).permit(:date)
  end
end
