class SeriesController < ApplicationController
  def index
    if params[:filtro]
      @series = Series.where('title like (?)', ["%#{params[:filtro]}%"]).page(params[:page]).per(12)
    else
      @series = Series.all.page(params[:page]).per(12)
    end
  end
end
