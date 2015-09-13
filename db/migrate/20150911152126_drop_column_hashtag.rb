class DropColumnHashtag < ActiveRecord::Migration
  def change
  	remove_column :places, :hashtag
  	remove_column :places, :creator
  end
end
