class Branch < ApplicationRecord
	belongs_to :hotel
	has_and_belongs_to_many :customers
	has_many :staffs, destroy: :dependent # cooking, cleaning, room service, etc
end
