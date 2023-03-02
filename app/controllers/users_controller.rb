class UsersController < ApplicationController
  def show
    @user = current_user
    @personnage = Personnage.new
    @my_own_personnages = @user.personnages
    @my_bookings = Reservation.where(user: current_user)
  end

end
