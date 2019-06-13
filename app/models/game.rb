class Game < ApplicationRecord
  # Direct associations

  belongs_to :opponent_team

  belongs_to :fanteam,
             :class_name => "FanTeam"

  # Indirect associations

  # Validations

end
