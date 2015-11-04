class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.string :length
      t.string :director
      t.string :poster
      t.string :format

      t.timestamps null: false
    end
  end
end
