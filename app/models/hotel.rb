class Hotel < ApplicationRecord
	has_many :branches, destroy: :dependent
end
