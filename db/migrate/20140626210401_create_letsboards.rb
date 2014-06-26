class CreateLetsboards < ActiveRecord::Migration
  def change
    create_table :letsboards do |t|
      t.string :subject
      t.string :memo
      t.integer :hits
      t.integer :user_id

      t.timestamps
    end
  end
end
