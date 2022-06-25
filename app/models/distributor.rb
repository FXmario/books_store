class Distributor < ApplicationRecord
	include Visible

	has_many :supplies, dependent: :destroy
	has_many :books, through: :supplies

	validates :distributor_name, presence: true 
	validates :address, presence: true 
	validates :telephone, presence: true, numericality: { only_integer: true }
end
