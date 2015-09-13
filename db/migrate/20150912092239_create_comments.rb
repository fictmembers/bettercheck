class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :place_id
      t.integer :score
      t.string :comment

      t.timestamps null: false
    end
  end
end
