module SeriesHelper

	def ultima_serie_round?(index, qtd_series)
		Rails.logger.info "(#{index} + 1) % #{qtd_series} == 0"
		(index + 1) % qtd_series == 0
	end

	def primeira_serie_round?(index, qtd_series)
		index % qtd_series == 0
	end
end