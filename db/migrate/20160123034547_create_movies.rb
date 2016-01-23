class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.date :release_date
      t.date :watched_day
      t.attachment :image
      t.integer :director_id
      t.integer :rating_id

      t.timestamps null: false
    end
    add_index :movies, :director_id
    add_index :movies, :rating_id
  end
end
