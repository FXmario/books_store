class Distributor < ApplicationRecord
	has_many :supplies, dependent: :destroy
	has_many :books, through: :supplies
end
