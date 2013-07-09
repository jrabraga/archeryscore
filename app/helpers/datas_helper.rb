module DatasHelper

	def data_to_br(data, opcoes = {})
		opcoes[:exibir_hora] = true if opcoes[:exibir_hora].nil?

		data_br = data.to_s.split(' ').first.split('-').reverse.join('/')

		if opcoes[:exibir_hora] and data.to_s.split(' ').size > 2
			data_br + ' ' + data.to_s.split(' ')[1]
		else
			data_br
		end
	end

end