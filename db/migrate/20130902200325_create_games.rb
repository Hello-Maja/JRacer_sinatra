class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :winner
      t.string :other_player
      t.integer :time
      t.integer :player_id
      t.timestamps
    end
  end
end
