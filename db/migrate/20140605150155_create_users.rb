class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :userid
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
