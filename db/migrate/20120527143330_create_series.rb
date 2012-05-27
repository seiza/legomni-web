class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.integer :number
      t.string :color
      t.string :url

      t.timestamps
    end
  end
end
