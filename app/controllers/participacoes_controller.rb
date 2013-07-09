# encoding: UTF-8
class ParticipacoesController < ApplicationController

	def new
		@participacao = Participacao.new
		@evento       = Evento.find(params[:evento_id])

		qtd_series = @evento.tipo.qtd_series * @evento.tipo.qtd_rounds

		qtd_series.times do
			@participacao.series.build
			@evento.tipo.flechas_por_serie.times do
				@participacao.series.last.tiros.build
				@participacao.series.last.tiros.last.pontuacao = 0
			end
		end
	end

	def create
		@participacao = Participacao.new(params[:participacao])

		if @participacao.save
			redirect_to evento_path(@participacao.evento)
		else
			render :new
		end
	end

end