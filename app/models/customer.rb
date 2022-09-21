class Customer < ApplicationRecord
	has_and_belongs_to_many :dishes
	has_and_belongs_to_many :branches
	has_one :hotel, through: :branch
end
