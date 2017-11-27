class StaticPagesController < ApplicationController
  def home
  end

  def my_series
    if params[:filtro]
      @series = current_user.series_list.series.where('title like (?)', ["%#{params[:filtro]}%"]).page(params[:page]).per(12)
    else
      @series = current_user.series_list.series.page(params[:page]).per(12)
    end
  end
end
