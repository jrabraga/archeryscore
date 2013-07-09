class Tiro < ActiveRecord::Base
	belongs_to :serie

	attr_accessible :pontuacao
end