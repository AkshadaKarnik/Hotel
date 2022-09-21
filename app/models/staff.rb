class Staff < ApplicationRecord
	belongs_to :branch
	has_one :hotel, through: :branch
end
