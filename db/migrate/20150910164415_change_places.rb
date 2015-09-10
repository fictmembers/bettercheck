class ChangePlaces < ActiveRecord::Migration
  def change
  	add_column :places, :user_id, :integer
  	add_index  :places, [:user_id, :created_at]
  end
end
