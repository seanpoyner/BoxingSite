class CreateCaptains < ActiveRecord::Migration
  def change
    create_table :captains do |t|
      t.integer :boxer_id

      t.timestamps
    end
  end
end
