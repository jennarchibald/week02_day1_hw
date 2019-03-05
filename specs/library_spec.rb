# Part C
require("Minitest/autorun")
require("minitest/rg")
require_relative("../library")

class TestLibrary < MiniTest::Test

  def setup
    @book1 =
      {
   title: "lord_of_the_rings",
   rental_details: {
    student_name: "Jeff",
    date: "01/12/16"
   }
 }

  @book2 =
  {
title: "game_of_thrones",
rental_details: {
student_name: "Jon",
date: "01/12/16"
}
}

  end
  def test_get_books
    library1 = Library.new(@book1, @book2)
    result = library1.get_books
    assert_equal([{
    title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }
        }, {
      title: "game_of_thrones",
      rental_details: {
      student_name: "Jon",
      date: "01/12/16"
      }
      }], result)
  end

  def test_get_book_info
    library1 = Library.new(@book1, @book2)
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
    library1 = Library.new(@book2, @book1)
    result = library1.get_rental_details("lord_of_the_rings")
    assert_equal(
      {
        student_name: "Jeff",
        date: "01/12/16"
        }, result)
  end

  def test_add_book
      library1 = Library.new(@book2, @book1)
      library1.add_book("lord_of_the_flies")
      assert_equal(3,library1.shelf.length)
  end

  def test_rent_book
  library1 = Library.new(@book2, @book1)
  library1.rent_book("lord_of_the_rings", "Jon", "04/03/19")
  assert_equal({student_name: "Jon", date: "04/03/19"}, library1.get_rental_details("lord_of_the_rings"))
  end
end
