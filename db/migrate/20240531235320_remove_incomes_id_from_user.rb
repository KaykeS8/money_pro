class RemoveIncomesIdFromUser < ActiveRecord::Migration[7.1]
  def change
    remove_reference :users, :income, null: false, foreign_key: true
  end
end
