class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :description
      t.integer :amount
      t.string :currency
      t.integer :period
      t.string :period_type
      t.date :start_date

      t.timestamps null: false
    end
  end
end
