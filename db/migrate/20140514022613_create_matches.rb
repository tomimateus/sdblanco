class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.boolean :played
      t.integer :matchday_id

      t.timestamps
    end
  end
end
