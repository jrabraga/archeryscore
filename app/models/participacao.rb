class Participacao < ActiveRecord::Base
	belongs_to :pessoa
	belongs_to :evento
	has_many :series

	accepts_nested_attributes_for :series

	attr_accessible :series_attributes
end