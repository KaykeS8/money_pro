class CreateIncomes < ActiveRecord::Migration[7.1]
  def change
    create_table :incomes do |t|
      t.string :title
      t.text :description
      t.date :data
      t.integer :value

      t.timestamps
    end
  end
end
