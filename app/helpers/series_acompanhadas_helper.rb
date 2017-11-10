module SeriesAcompanhadasHelper
	def is_followed?(serie)
		SerieAcompanhada.exists?(user_id: current_user.id, serie_id: serie.id)
	end
end
