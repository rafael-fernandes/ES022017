class SeriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:filtro]
      @series = Serie.where('title like (?)', ["%#{params[:filtro]}%"]).page(:page).per(16)
    else
      @series = Serie.all.page(:page).per(16)
    end
  end
end
