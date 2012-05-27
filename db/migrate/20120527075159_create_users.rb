class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :password
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :city1
      t.string :city2
      t.string :city3

      t.timestamps
    end
  end
end
