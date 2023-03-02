class UsersController < ApplicationController
  def show
    @user = current_user
    @personnage = Personnage.new
    @my_own_personnages = @user.personnages
    @my_bookings = Reservation.where(user: current_user)
  end

  def create
    @user = current_user
    @personnage = Personnage.new(personnage_params)
    @personnage.user = @user

    if @personnage.save!
      redirect_to personnage_path(@personnage)
    elsif @personnage.name.valid? == false
      redirect_to new_personnage_path, notice: "The name is already taken"
    else
      render :new, status: :unprocessable_entity
    end
  end
end
