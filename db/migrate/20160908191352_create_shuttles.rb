class CreateShuttles < ActiveRecord::Migration[5.0]
  def change
    create_table :shuttles do |t|
      t.integer :shuttle_num
      t.timestamps
    end
  end
end
