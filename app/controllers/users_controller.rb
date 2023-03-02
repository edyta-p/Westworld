class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @personnage = Personnage.new
    @my_own_personnages = current_user.personnages
  end
end
