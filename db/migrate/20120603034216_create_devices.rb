class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :name, :null => false
      t.string :udid, :null => false
      t.integer :user_id, :null => false

      t.timestamps
    end
  end
end
