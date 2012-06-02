class CreateFigures < ActiveRecord::Migration
  def change
    create_table :figures, :id => false, :primary_key => "figure_code" do |t|
      t.string :figure_code, :null => false
      t.string :series_code
      t.integer :index
      t.string :name
      t.string :url
      t.string :slogan
      t.text :description
      t.integer :strength
      t.integer :creativity
      t.integer :speed

      t.timestamps
    end
  end
end
