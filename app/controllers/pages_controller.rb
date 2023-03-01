class PagesController < ApplicationController

  def home
    @personnages = Personnage.all.sample(7)
    @choice_of_the_moment = @personnages[0]
    @all_the_rest = @personnages[1..7]
  end

  private

  def query_params
    params.require(:page).permit(:query)
  end
end
