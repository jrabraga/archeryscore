class Evento < ActiveRecord::Base
	belongs_to :tipo
	has_many :participacoes
end