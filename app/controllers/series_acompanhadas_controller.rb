class SeriesAcompanhadasController < ApplicationController

	def add_to_list
		SerieAcompanhada.create(serie_id: params[:serie_id], user_id: current_user.id)
		redirect_to root_path
	end

	def remove_from_list
		r = SerieAcompanhada.find_by(serie_id: params[:serie_id], user_id: current_user.id)
		r.delete
		redirect_to root_path
	end
end
