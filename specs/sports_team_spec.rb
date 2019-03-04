# Pairt B
require("Minitest/autorun")
require("minitest/rg")
require_relative("../sports_team")

class TestSportsTeam < MiniTest::Test

  def test_get_team_name
    team1 = SportsTeam.new("Javascript Warriors", ["Bob", "Kevin"], "Gru")
    assert_equal("Javascript Warriors", team1.team_name)
  end

  def test_get_players
    team1 = SportsTeam.new("Javascript Warriors", ["Bob", "Kevin"], "Gru")
    assert_equal(["Bob", "Kevin"], team1.players)
  end

  def test_get_coach
    team1 = SportsTeam.new("Javascript Warriors", ["Bob", "Kevin"], "Gru")
    assert_equal("Gru", team1.coach)
  end

  def test_change_coach
    team1 = SportsTeam.new("Javascript Warriors", ["Bob", "Kevin"], "Gru")
    team1.coach = "banana"
    assert_equal("banana", team1.coach)
  end

  def test_add_player
    team1 = SportsTeam.new("Javascript Warriors", ["Bob", "Kevin"], "Gru")
    team1.add_player("Jon")
    assert_equal(3, team1.players.length)
  end

  def test_find_player__true
    team1 = SportsTeam.new("Javascript Warriors", ["Bob", "Kevin"], "Gru")
    result = team1.find_player("Bob")
    assert_equal(true, result)
  end

  def test_find_player__false
    team1 = SportsTeam.new("Javascript Warriors", ["Bob", "Kevin"], "Gru")
    result = team1.find_player("Jenn")
    assert_equal(false, result)
  end

  def test_result__win
    team1 = SportsTeam.new("Javascript Warriors", ["Bob", "Kevin"], "Gru")
    team1.result("Win")
    assert_equal(1, team1.points)
  end

  def test_result__lose
    team1 = SportsTeam.new("Javascript Warriors", ["Bob", "Kevin"], "Gru")
    team1.result("lose")
    assert_equal(0, team1.points)
end
end
