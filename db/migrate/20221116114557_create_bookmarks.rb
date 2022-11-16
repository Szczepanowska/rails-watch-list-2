class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.string :comment
      t.integer :movieId
      t.integer :listId

      t.timestamps
    end
  end
end
