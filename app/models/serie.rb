class Serie < ActiveRecord::Base
	belongs_to :participacao
	has_many :tiros

	accepts_nested_attributes_for :tiros

	attr_accessible :tiros_attributes

	def hits
		self.tiros.where('pontuacao != 0').count
	end

	def total
		self.tiros.sum(:pontuacao)
	end

	def acumulado
		series = Serie.where(:participacao_id => self.participacao_id).where('id <= ?', self.id)
		Tiro.where(:serie_id => series).sum(:pontuacao)
	end

	def indice
		Serie.where('participacao_id = ? AND id < ?', self.participacao_id, self.id).count
	end

	def numero
		i = self.indice + 1

		resp = i % self.participacao.evento.tipo.qtd_series
		resp = self.participacao.evento.tipo.qtd_series if resp == 0

		resp
	end

	def numero_round
		(self.indice / self.participacao.evento.tipo.qtd_series) + 1
	end
end