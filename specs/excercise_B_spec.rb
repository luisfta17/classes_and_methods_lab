require('minitest/autorun')
require('minitest/rg')
require_relative('../excercise_B')

class SportTeamTest < MiniTest::Test

  def test_get_team_name
    team1 = Team.new("Hearts", ["luis", "colin"], "Sandy")
    assert_equal("Hearts", team1.team_name())
  end

  def test_get_team_players
    team1 = Team.new("Hearts", ["luis", "colin"], "Sandy")
    assert_equal(["luis", "colin"], team1.players)
  end

  def test_get_team_coach
    team1 = Team.new("Hearts", ["luis", "colin"], "Sandy")
    assert_equal("Sandy", team1.coach)
  end

  def test_set_team_coach
    team1 = Team.new("Hearts", ["luis", "colin"], "Sandy")
    team1.coach = 'John'
    assert_equal("John", team1.coach)
  end

  def test_add_a_player
    team1 = Team.new("Hearts", ["luis", "colin"], "Sandy")
    team1.add_team_player("Finn")
    assert_equal(["luis", "colin", "Finn"], team1.players)
  end

  def test_find_a_player
    team1 = Team.new("Hearts", ["luis", "colin"], "Sandy")
    team_players = team1.find_a_player("luis")
    assert_equal(true, team_players)
  end

  def test_find_a_player_not_found
    team1 = Team.new("Hearts", ["luis", "colin"], "Sandy")
    team_players = team1.find_a_player("Bran")
    assert_equal(false, team_players)
  end

  def test_team__won
    team1 = Team.new("Hearts", ["luis", "colin"], "Sandy")
    team_players = team1.update_team_points("win")
    assert_equal(3, team_players)
  end

  def test_team__lose
    team1 = Team.new("Hearts", ["luis", "colin"], "Sandy")
    team_players = team1.update_team_points("lose")
    assert_equal(0, team_players)
  end

  def test_team__draw
    team1 = Team.new("Hearts", ["luis", "colin"], "Sandy")
    team_players = team1.update_team_points("draw")
    assert_equal(1, team_players)
  end


end
