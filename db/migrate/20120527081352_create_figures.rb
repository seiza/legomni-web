class CreateFigures < ActiveRecord::Migration
  def change
    create_table :figures do |t|
      t.integer :serie_id
      t.integer :number
      t.string :name
      t.string :url
      t.string :slogan
      t.string :description
      t.integer :strength
      t.integer :creativity
      t.integer :speed

      t.timestamps
    end
  end
end
