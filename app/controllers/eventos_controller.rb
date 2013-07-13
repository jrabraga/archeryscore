# encoding: UTF-8
class EventosController < ApplicationController

	def index
		@eventos = Evento.order('data DESC')
	end

	def show
		@evento       = Evento.find(params[:id])
		@participacao = @evento.participacoes.where(:pessoa_id => current_pessoa.id).first
	end

end