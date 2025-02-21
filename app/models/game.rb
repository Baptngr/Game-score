class Game < ApplicationRecord
  belongs_to :team_away, class_name: 'Team'
  belongs_to :team_home, class_name: 'Team'
  belongs_to :day
   def to_s
    score_home + score_away
   end
end
