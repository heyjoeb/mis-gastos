class Category < ActiveRecord::Base
	has_many :expenses, inverse_of: :category
end
