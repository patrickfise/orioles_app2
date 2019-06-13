class CreateOpponentTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :opponent_teams do |t|

      t.timestamps
    end
  end
end
