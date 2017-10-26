class SeriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:filtro]
      @series = Serie.where('title like (?)', ["%#{params[:filtro]}%"])
    else
      @series = Serie.all
    end
  end
end
