require('minitest/autorun')
require('minitest/rg')
require_relative('../excercise_B')

class SportTeamTest < MiniTest::Test

  def test_get_team_name
    team1 = Team.new("Hearts", ["luis", "colin"], "Sandy")
    team_name = team1.team_name()
    assert_equal("Hearts", team_name)
  end

  def test_get_team_players
    team1 = Team.new("Hearts", ["luis", "colin"], "Sandy")
    team_players = team1.players()
    assert_equal(["luis", "colin"], team_players)
  end

  def test_get_team_coach
    team1 = Team.new("Hearts", ["luis", "colin"], "Sandy")
    team_coach = team1.coach()
    assert_equal("Sandy", team_coach)
  end

  def test_set_team_coach
    team1 = Team.new("Hearts", ["luis", "colin"], "Sandy")
    team1.coach = 'John'
    team_coach = team1.coach()
    assert_equal("John", team_coach)
  end

  def test_add_a_player
    team1 = Team.new("Hearts", ["luis", "colin"], "Sandy")
    team1.add_team_player("Finn")
    team_players = team1.players()
    assert_equal(["luis", "colin", "Finn"], team_players)
  end

end
