class PersonnagesController < ApplicationController
  before_action :set_personnage, only: %i[show edit update destroy]


  def search
    @personnages = policy_scope(Personnage)
  end

  def show
    @personnage = Personnage.find(params[:id])
    @reservation = Reservation.new
    authorize @restaurant
  end

  def new
    @personnage = Personnage.new
    authorize @restaurant
  end

  def create
    @user = current_user
    @personnage = Personnage.new(personnage_params)
    @personnage.user = @user
    authorize @restaurant

    if @personnage.save!
      redirect_to personnage_path(@personnage)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @restaurant
  end

  def update
    @personnage.update(personnage_params)
    redirect_to personnage_path(@personnage)
    authorize @restaurant
  end

  def destroy
    @personnage.destroy
    redirect_to root_path, status: :see_other
    authorize @restaurant
  end

  private

  # à voir current_user
  def set_personnage
    @personnage = Personnage.find(params[:id])
  end

  def personnage_params
    params.require(:personnage).permit(:name, :category, :role, :price)
  end
end
