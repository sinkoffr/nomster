class AddColumnToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :photo_id, :integer
  end
end
