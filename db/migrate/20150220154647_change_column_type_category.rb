class ChangeColumnTypeCategory < ActiveRecord::Migration
  def change
  	change_column :expenses, :category_id, :integer
  end
end
