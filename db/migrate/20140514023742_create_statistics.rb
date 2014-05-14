class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.integer :points
      t.integer :played
      t.integer :won
      t.integer :tied
      t.integer :lost
      t.integer :goals_scored
      t.integer :goals_received
      t.integer :red_cards
      t.integer :yellow_cards
      t.integer :tournament_id
      t.integer :team_id

      t.timestamps
    end
  end
end
