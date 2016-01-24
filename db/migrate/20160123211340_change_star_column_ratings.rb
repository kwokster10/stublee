class ChangeStarColumnRatings < ActiveRecord::Migration
  def change
    change_column :ratings, :stars, :decimal
  end
end
