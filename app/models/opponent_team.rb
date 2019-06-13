class OpponentTeam < ApplicationRecord
  # Direct associations

  has_many   :games,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
