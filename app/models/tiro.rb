class Tiro < ActiveRecord::Base
	belongs_to :serie

	attr_accessible :valor

	attr_accessor :valor
	before_save :gravar_pontuacao

	def valor=(value)
		if value == 'X'
			self.pontuacao = 10
			self.x         = true
		elsif value == 'M'
			self.pontuacao = 0
		else
			self.pontuacao = value.to_i
		end
	end

	def valor
		if self.pontuacao == 10 and self.x
			'X'
		elsif self.pontuacao == 0
			'M'
		else
			self.pontuacao
		end
	end

	private

	def gravar_pontuacao
		definir_pontuacao(self.valor)
	end

	def definir_pontuacao(value)
		if value == 'X'
			self.pontuacao = 10
			self.x         = true
		elsif value == 'M'
			self.pontuacao = 0
		else
			self.pontuacao = value.to_i
		end
	end

end