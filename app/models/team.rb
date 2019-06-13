class Team < ApplicationRecord
  # Direct associations

  has_many   :fan_teams,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
