class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.text :content
      t.integer :stars
      t.boolean :draft
      t.integer :movie_id
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :ratings, :user_id
  end
end
