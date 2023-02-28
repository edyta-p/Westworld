class PersonnagesController < ApplicationController
  before_action :set_user, only: [:create]
  before_action :set_personnage, only: [:show, :update, :destroy]

  def search

  end

  def show
    @personnage = Personnage.find(params[:id])
    @reservation = Reservation.new
  end

  def new
    @personnage = Personnage.new
  end

  def create
    @personnage = Personnage.new(personnage_params)
    @personnage.user = @user

    if @personnage.save
      redirect_to personnage_path(@personnage)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @personnage.update(personnage_params)
  end

  def destroy
    @personnage.destroy
  end

  private

  # à voir current_user
  def set_personnage
    @personnage = Personnage.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def personnage_params
    params.require(:personnage).permit(:name, :category, :role, :price)
  end
end
