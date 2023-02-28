class PersonnagesController < ApplicationController
  before_action :set_personnage, only: %i[show update destroy]

  def search
    @personnages = Personnage.all.sample(5)
  end

  def show
    @personnage = Personnage.find(params[:id])
  end

  def new
    @personnage = Personnage.new
  end

  def create
    @user = User.find(params[:user_id])
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

  def personnage_params
    params.require(:personnage).permit(:name, :category, :role, :price)
  end
end
