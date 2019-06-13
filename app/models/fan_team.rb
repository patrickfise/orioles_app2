class FanTeam < ApplicationRecord
  # Direct associations

  has_many   :games,
             :foreign_key => "fanteam_id",
             :dependent => :destroy

  belongs_to :team

  # Indirect associations

  # Validations

end
