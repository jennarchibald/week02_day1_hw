# Part A
class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def get_name
    return @name
  end

  def get_cohort
    return @cohort
  end

  def change_name(new_name)
    @name = new_name
  end

  def change_cohort(new_cohort)
    @cohort = new_cohort
  end

  def talk
    return "I can talk"
  end

  def fav_language(language)
    return "I love #{language}!"
  end

end

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


#Part C

class Library
  attr_reader :shelf

  def initialize(book_title, student_name, date)
    @shelf = [
    {
      title: book_title,
      rental_details: {
        student_name: student_name,
        date: date
      }
      }
    ]

  end

  def get_books
    return @shelf
  end

  def get_book_info(title)
    for book in @shelf
      return book if book[:title] == title
    end
    return nil
  end

  def get_rental_details(title)
    for book in @shelf
      return book[:rental_details] if book[:title] == title
    end
    return nil
  end

  def add_book(title)
    @shelf.push(
      {title: title,
        rental_details: {student_name: "", date: ""}
        })

  end

  def rent_book(title, student, date)
    for book in @shelf
      if book[:title] == title
        book[:rental_details][:student_name] = student
        book[:rental_details][:date] = date
      end
    end
  end
end
