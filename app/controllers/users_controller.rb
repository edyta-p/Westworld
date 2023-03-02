class UsersController < ApplicationController
  def show
    @user = current_user
    @personnage = Personnage.new
    @my_own_personnages = @user.personnages
  end

end
