class PagesController < ApplicationController

  def home

  end

  private

  def query_params
    params.require(:page).permit(:query)
  end

end
