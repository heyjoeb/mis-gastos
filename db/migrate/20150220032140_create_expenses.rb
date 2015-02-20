class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :category_id
      t.datetime :fecha
      t.string :concept
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
