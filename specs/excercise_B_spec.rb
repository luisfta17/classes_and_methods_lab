require('minitest/autorun')
require('minitest/rg')
require_relative('../excercise_B')

class SportTeamTest < MiniTest::Test
  def setup
    @team1 = Team.new("Hearts", ["luis", "colin"], "Sandy")
  end

  def test_get_team_name
    assert_equal("Hearts", @team1.team_name())
  end

  def test_get_team_players
    assert_equal(["luis", "colin"], @team1.players)
  end

  def test_get_team_coach
    assert_equal("Sandy", @team1.coach)
  end

  def test_set_team_coach
    @team1.coach = 'John'
    assert_equal("John", @team1.coach)
  end

  def test_add_a_player
    @team1.add_team_player("Finn")
    assert_equal(3, @team1.players.length)
  end

  def test_find_a_player
    assert_equal(true, @team1.find_a_player("luis"))
  end

  def test_find_a_player_not_found
    assert_equal(false, @team1.find_a_player("Bran"))
  end

  def test_team__won
    team_players = @team1.update_team_points("win") #left it in this way as future references of pre-refactoring
    assert_equal(3, team_players)
  end

  def test_team__lose
    assert_equal(0, @team1.update_team_points("lose"))
  end

  def test_team__draw
    assert_equal(1, @team1.update_team_points("draw"))
  end

end
