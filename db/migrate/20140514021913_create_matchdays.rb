class CreateMatchdays < ActiveRecord::Migration
  def change
    create_table :matchdays do |t|
      t.integer :number
      t.integer :tournament_id

      t.timestamps
    end
  end
end
