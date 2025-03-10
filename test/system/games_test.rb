require "application_system_test_case"

class GamesTest < ApplicationSystemTestCase
  setup do
    @game = games(:one)
  end

  test "visiting the index" do
    visit games_url
    assert_selector "h1", text: "Games"
  end

  test "should create game" do
    visit games_url
    click_on "New game"

    fill_in "Date", with: @game.date
    fill_in "Day", with: @game.day_id
    fill_in "Description", with: @game.description
    fill_in "Score away", with: @game.score_away
    fill_in "Score home", with: @game.score_home
    fill_in "Team away", with: @game.team_away_id
    fill_in "Team home", with: @game.team_home_id
    click_on "Create Game"

    assert_text "Game was successfully created"
    click_on "Back"
  end

  test "should update Game" do
    visit game_url(@game)
    click_on "Edit this game", match: :first

    fill_in "Date", with: @game.date
    fill_in "Day", with: @game.day_id
    fill_in "Description", with: @game.description
    fill_in "Score away", with: @game.score_away
    fill_in "Score home", with: @game.score_home
    fill_in "Team away", with: @game.team_away_id
    fill_in "Team home", with: @game.team_home_id
    click_on "Update Game"

    assert_text "Game was successfully updated"
    click_on "Back"
  end

  test "should destroy Game" do
    visit game_url(@game)
    click_on "Destroy this game", match: :first

    assert_text "Game was successfully destroyed"
  end
end
