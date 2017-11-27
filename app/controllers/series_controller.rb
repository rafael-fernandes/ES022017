class SeriesController < ApplicationController
  def index
    if params[:filtro]
      @series = Series.where('title like (?)', ["%#{params[:filtro]}%"]).page(params[:page]).per(12)
    else
      @series = Series.all.page(params[:page]).per(12)
    end
  end

  def show
  	@serie = Series.find(params[:id])

  	@exists = current_user.series_list.series.exists?(id: @serie.id)
  end

  def add_or_remove_serie
  	@serie = Series.find(params[:id])

  	@exists = current_user.series_list.series.exists?(id: @serie.id)

  	if @exists
  		current_user.series_list.series.delete(@serie.id)
  	else
  		current_user.series_list.series << @serie
  	end

  	redirect_to series_path
  end
end
