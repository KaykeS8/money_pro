class AddIncomeIdToUser < ActiveRecord::Migration[7.1]
  def change
    add_reference :users, :income, null: true, foreign_key: true
  end
end
