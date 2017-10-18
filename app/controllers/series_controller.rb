class SeriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @series = Serie.all
  end
end
