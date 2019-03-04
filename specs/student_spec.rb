require("Minitest/autorun")
require("minitest/rg")
require_relative("../student")

class TestStudent < MiniTest::Test

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



end
