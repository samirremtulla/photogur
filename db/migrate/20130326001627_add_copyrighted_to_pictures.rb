class AddCopyrightedToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :copyrighted, :boolean, :default => true
  end
end
