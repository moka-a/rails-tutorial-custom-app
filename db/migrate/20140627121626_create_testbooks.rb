class CreateTestbooks < ActiveRecord::Migration
  def change
    create_table :testbooks do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
