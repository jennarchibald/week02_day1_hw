require("Minitest/autorun")
require("minitest/rg")
require_relative("../classes_lab")

class TestClassesLab < MiniTest::Test

  def test_get_name
    student1 = Student.new("Jon", "E29")
    assert_equal("Jon", student1.get_name)
  end

  def test_get_cohort
    student1 = Student.new("Jon", "E29")
    assert_equal("E29", student1.get_cohort)
  end

  def test_change_name
    student1 = Student.new("Jon", "E29")
    student1.change_name("Jenn")
    assert_equal("Jenn", student1.get_name)
  end

  def test_change_cohort
    student1 = Student.new("Jon", "E29")
    student1.change_cohort("G14")
    assert_equal("G14", student1.get_cohort)
  end

  def test_talk
    student1 = Student.new("Jon", "E29")
    result = student1.talk()
    assert_equal("I can talk", result)
  end

  def test_fav_language
    student1 = Student.new("Jon", "E29")
    result = student1.fav_language("Ruby")
    assert_equal("I love Ruby!", result)
  end

  # Pairt B

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

  # Part C

  def test_get_books
    library1 = Library.new("lord_of_the_rings", "Jeff", "01/12/16")
    result = library1.get_books
    assert_equal([{
    title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
        }], result)
  end

  def test_get_book_info
    library1 = Library.new("lord_of_the_rings", "Jeff", "01/12/16")
    result = library1.get_book_info("lord_of_the_rings")
    assert_equal({
    title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
        }, result)
  end

  def test_get_rental_details
    library1 = Library.new("lord_of_the_rings", "Jeff", "01/12/16")
    result = library1.get_rental_details("lord_of_the_rings")
    assert_equal(
      {
        student_name: "Jeff",
        date: "01/12/16"
        }, result)
  end

  def test_add_book
      library1 = Library.new("lord_of_the_rings", "Jeff", "01/12/16")
      library1.add_book("lord_of_the_flies")
      assert_equal(2,library1.shelf.length)
  end

  def test_rent_book
  library1 = Library.new("lord_of_the_rings", "Jeff", "01/12/16")
  library1.rent_book("lord_of_the_rings", "Jon", "04/03/19")
  assert_equal({student_name: "Jon", date: "04/03/19"}, library1.get_rental_details("lord_of_the_rings"))
  end

end
