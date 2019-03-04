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
