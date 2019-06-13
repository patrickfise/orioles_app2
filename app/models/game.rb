class Game < ApplicationRecord
  # Direct associations

  belongs_to :fanteam,
             :class_name => "FanTeam"

  # Indirect associations

  # Validations

end
