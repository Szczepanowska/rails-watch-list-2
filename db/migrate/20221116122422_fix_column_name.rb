class FixColumnName < ActiveRecord::Migration[7.0]
  def change
    change_table :bookmarks do |t|
      t.rename "movieId", "movie_id"
      t.rename "listId", "list_id"
    end
  end
end
