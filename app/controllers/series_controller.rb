class SeriesController < ApplicationController

  def index
    if params[:filtro]
      @series = Serie.where('title like (?)', ["%#{params[:filtro]}%"]).page(params[:page]).per(16)
    else
      @series = Serie.all.page(params[:page]).per(16)
    end
  end
end
