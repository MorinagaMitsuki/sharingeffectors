class CreateFamousEffectors < ActiveRecord::Migration[6.1]
  def change
    create_table :famous_effectors do |t|
      t.string :name
      t.string :band_name
      t.string :image
      t.string :movie
      t.string :title
      t.text :introduction
      t.text :released_year
      t.text :url

      t.timestamps
    end
  end
end
