class RemoveRatingIdColumnMovies < ActiveRecord::Migration
  def change
    remove_column :movies, :rating_id, :integer, index: true
  end
end
