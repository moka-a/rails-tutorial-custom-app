class CreateFreeboards < ActiveRecord::Migration
  def change
    create_table :freeboards do |t|
      t.string :subject
      t.string :memo
      t.integer :hits
      t.integer :user_id

      t.timestamps
    end
    add_index :freeboards, [:user_id, :created_at]
  end
end
