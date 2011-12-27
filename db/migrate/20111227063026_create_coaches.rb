class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.string :lastname
      t.string :firstname
      t.string :middle
      t.string :xNumber

      t.timestamps
    end
  end
end
