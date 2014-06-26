class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
    	t.integer :user_id

      t.timestamps
    end
  end
end
