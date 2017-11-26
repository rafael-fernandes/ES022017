class SeriesList < ApplicationRecord
  belongs_to :user
  has_many :series

  # has_many :series_inside, class_name: 'SerieInsideList'


	# def add_serie(serie_id)
  #  	serie_inside_list = series_inside.where('serie_id = ?', serie_id).first
  #  	if serie_id != new_serie.id
  #  		new_serie = SerieInsideList.new(serie: Serie.find(serie_id))
  #  		series_inside << new_serie
  #   	save
  # 	end
  # end


  # def remove_serie(serie_id)
  #  	serie_inside_list = series_inside.where('serie_id = ?', serie_id).first
  #  	series_inside.delete serie_inside_list
  #  	serie_inside_list.destroy
  #  	save
  # end
end
