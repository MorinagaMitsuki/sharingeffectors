class AddVideoToEffectors < ActiveRecord::Migration[6.1]
  def change
    add_column :effectors, :video, :string
  end
end
