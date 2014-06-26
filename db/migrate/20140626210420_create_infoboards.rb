class CreateInfoboards < ActiveRecord::Migration
  def change
    create_table :infoboards do |t|
      t.string :subject
      t.string :memo
      t.integer :hits
      t.integer :user_id

      t.timestamps
    end
  end
end
