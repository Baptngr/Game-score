class CreateGames < ActiveRecord::Migration[8.0]
  def change
    create_table :games do |t|
      t.integer :score_home
      t.integer :score_away
      t.text :description
      t.date :date
      t.references :team_away, null: false, foreign_key: { to_table: :teams }
      t.references :team_home, null: false, foreign_key: { to_table: :teams }
      t.references :day, null: false, foreign_key: true

      t.timestamps
    end
  end
end
