class Cashier < ApplicationRecord
	before_save { username.downcase! }
	validates :name, presence: true, length: { maximum: 50 }
	validates :username, presence: true, length: { maximum: 50 }, uniqueness: true
	has_secure_password
	validates :password, presence: true, length: { minimum: 6 }

	def Cashier.digest(string)
		cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost 
		BCrypt::Password.create(string, cost: cost)
	end
end
