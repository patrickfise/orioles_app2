class CreateHomeTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :home_teams do |t|
      t.string :home_name

      t.timestamps
    end
  end
end
