# encoding: UTF-8
class EventosController < ApplicationController

	def index
		@eventos = Evento.order('data DESC')
	end

	def show
		@evento = Evento.find(params[:id])
	end

end