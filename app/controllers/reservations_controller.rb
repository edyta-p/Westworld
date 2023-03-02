class ReservationsController < ApplicationController
  # before_action :set_user, only: [:create, :destroy]
  # before_action :set_reservation, only: [:destroy]

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @personnage = Personnage.find(params[:personnage_id])
    @reservation.personnage = @personnage

    if @reservation.save
      redirect_to user_path(current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @user = current_user
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to user_path(@user), status: :see_other, notice: "#{@reservation.date} was successfully destroyed"
  end

  private

  # def set_reservation
  #   @reservation = Reservation.find(params[:id])
  # end
  def reservation_params
    params.require(:reservation).permit(:date)
  end
end
