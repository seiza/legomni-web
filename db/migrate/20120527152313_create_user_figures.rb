class CreateUserFigures < ActiveRecord::Migration
  def change
    create_table :user_figures do |t|
      t.integer :user_id
      t.string :figure_code
      t.integer :count
      t.integer :wanted
      t.integer :give
      t.date :first_at

      t.timestamps
    end
  end
end
