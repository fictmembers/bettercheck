class AddColumnCreatorToPlaces < ActiveRecord::Migration
  def change
  	add_column :places, :creator, :string
  end
end
