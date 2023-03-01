class PersonnagesController < ApplicationController
  before_action :set_personnage, only: %i[show edit update destroy]


  def index
    search_elem = params[:query]
    @personnages = Personnage.where(name: search_elem)
  end

  def show
    @personnage = Personnage.find(params[:id])
    @reservation = Reservation.new
  end

  def new
    @personnage = Personnage.new
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

  def edit
  end

  def update
    @personnage.update(personnage_params)
    redirect_to personnage_path(@personnage), notice: "#{@personnage.name} was successfully updated"
  end

  def destroy
    @user = current_user
    @personnage.destroy
    redirect_to user_path(@user), status: :see_other, notice: "#{@personnage.name} was successfully destroyed"
  end

  private

  # à voir current_user
  def set_personnage
    @personnage = Personnage.find(params[:id])
  end

  def personnage_params
    params.require(:personnage).permit(:name, :category, :role, :price, :photo)
  end
end
