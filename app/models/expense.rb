class Expense < ActiveRecord::Base
	belongs_to :category, inverse_of: :expenses
end
