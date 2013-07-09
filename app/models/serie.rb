class Serie < ActiveRecord::Base
	belongs_to :participacao
	has_many :tiros

	accepts_nested_attributes_for :tiros

	attr_accessible :tiros_attributes
end