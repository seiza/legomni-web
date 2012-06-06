class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :city1
      t.string :city2
      t.string :city3

      t.timestamps
    end
  end
end
