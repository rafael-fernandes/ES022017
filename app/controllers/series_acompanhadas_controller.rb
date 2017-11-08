class SeriesAcompanhadasController < ApplicationController
	def show
		@series_acompanhadas = current_list
	end

	def add_to_list
		current_list.add_serie(params[:serie_id])
		redirect_to current_list_path
	end

	def remove_from_list
		current_list.remove_serie(params[:serie_id])
		redirect_to current_list_path
	end
end
