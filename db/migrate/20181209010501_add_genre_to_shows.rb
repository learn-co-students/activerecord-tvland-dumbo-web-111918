class AddGenreToShows < ActiveRecord::Migration[5.1]
  def change
    add_column :shows, :genre, :string
    #specify name of table, then name of column and type!
  end
end
