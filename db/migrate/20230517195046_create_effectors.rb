class CreateEffectors < ActiveRecord::Migration[6.1]
  def change
    create_table :effectors do |t|
      t.string :title
      t.string :image
      t.text :introduction
      t.integer :released_year
      t.string :user_id
      t.string :url

      t.timestamps
    end
  end
end
