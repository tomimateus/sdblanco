class CreateMatchPlayers < ActiveRecord::Migration
  def change
    create_table :match_players do |t|
      t.integer :goals
      t.integer :red_cards
      t.integer :yellow_cards
      t.integer :match_id
      t.integer :player_id

      t.timestamps
    end
  end
end
