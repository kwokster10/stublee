class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :note
      t.integer :user_id
      t.integer :movie_id

      t.timestamps null: false
    end
    add_index :comments, :user_id
    add_index :comments, :movie_id
  end
end
