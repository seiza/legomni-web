class CreateSeries < ActiveRecord::Migration
  def change
    create_table "series", :primary_key => "series_code", :force => true do |t|
      t.integer :index
      t.string :color
      t.string :url

      t.timestamps
    end
  end
end
