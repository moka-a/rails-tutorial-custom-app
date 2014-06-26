class CreateSellbuyboards < ActiveRecord::Migration
  def change
    create_table :sellbuyboards do |t|
      t.string :subject
      t.string :memo
      t.integer :hits

      t.timestamps
    end
  end
end
