class CreateTrackings < ActiveRecord::Migration[5.0]
  def change
    create_table :trackings do |t|
      t.references :driver
      t.references :shuttle
      t.float :lat
      t.float :lng
      t.timestamps
    end
  end
end
