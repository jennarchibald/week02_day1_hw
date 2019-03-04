#Part B

class SportsTeam
  attr_reader :team_name, :players, :points
  attr_accessor :coach
  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player(newbie)
    @players.push(newbie)
  end

  def find_player(name)
    for player in @players
      return true if player == name
    end
    return false
  end

  def result(win_or_lose)
    @points += 1 if win_or_lose.downcase == "win"
  end

  # def get_team_name
  #   return @team_name
  # end
  #
  # def get_players
  #   return @players
  # end
  #
  # def get_coach
  #   return @coach
  # end
  #
  # def change_coach(new_coach)
  #   @coach = new_coach
  # end

end
