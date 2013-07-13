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
			end
		end
	end

	def create
		@participacao           = Participacao.new(params[:participacao])
		@participacao.evento_id = params[:evento_id]
		@participacao.pessoa_id = current_pessoa.id

		if @participacao.save
			redirect_to evento_path(@participacao.evento)
		else
			render :new
		end
	end

	def show
		@participacao = Participacao.find(params[:id])
	end

	def edit
		@participacao = Participacao.find(params[:id])
	end

	def update
		@participacao = Participacao.find(params[:id])

		if @participacao.update(params[:participacao])
			redirect_to evento_path(@participacao.evento)
		else
			render :edit
		end
	end

end