class SeriesController < ApplicationController

  def index
    if params[:filtro]
      @series = Serie.where('title like (?)', ["%#{params[:filtro]}%"]).page(params[:page]).per(12)
    else
      @series = Serie.all.page(params[:page]).per(12)
    end
  end
end
