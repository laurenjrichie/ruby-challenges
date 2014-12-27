class MultiplicationTable

  def initialize(rows, columns)
    @total_rows = rows
    @total_columns = columns
  end

  def print_column_headings
    n = 1
    @total_columns.times do
      print "    #{n}"
      n += 1
    end

    print "\n\n"
  end

  def print_row_heading(row)
    print "#{row}|  "
  end

  def print_number(number)
    if number.to_s.length == 1
      print "#{number}    "
    else
      print "#{number}   "
    end
  end

  def print_row(row)
    column = 1
    while column <= @total_columns
      number = row*column
      print_number(number)
      column += 1
    end
  end

  def create_table
    print_column_headings
    row = 1
    while row <= @total_rows
      print_row_heading(row)
      print_row(row)
      print "\n"
      row += 1
    end
  end

end

MultiplicationTable.new(9,9).create_table
