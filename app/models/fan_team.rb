class FanTeam < ApplicationRecord
  # Direct associations

  belongs_to :user

  has_many   :games,
             :foreign_key => "fanteam_id",
             :dependent => :destroy

  belongs_to :team

  # Indirect associations

  # Validations

end
