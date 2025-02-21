json.extract! game, :id, :score_home, :score_away, :description, :date, :team_away_id, :team_home_id, :day_id, :created_at, :updated_at
json.url game_url(game, format: :json)
