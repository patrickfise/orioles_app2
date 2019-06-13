class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :home_name
      t.string :away_name
      t.string :time
      t.string :date
      t.integer :fanteam_id
      t.integer :opponent_team_id

      t.timestamps
    end
  end
end
