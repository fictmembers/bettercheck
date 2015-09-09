class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :place
      t.string :description
      t.float :lat
      t.float :lon
      t.string :adress
      t.string :hashtag

      t.timestamps null: false
    end
  end
end
