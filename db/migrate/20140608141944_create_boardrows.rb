class CreateBoardrows < ActiveRecord::Migration
  def change
    create_table :boardrows do |t|
      t.string :subject
      t.string :name
      t.string :memo
      t.integer :hits

      t.timestamps
    end
  end
end
