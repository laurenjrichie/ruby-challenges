class MultiplicationTable

  def initialize(rows, columns)
    @total_rows = rows
    @total_columns = columns
  end

  def column_headings
      n = 1
      headings = @total_columns.times do
        print "    #{n}"
        n += 1
      end
    # headings
    blank_line = "\n\n"
  end

  def row_heading(row)
    heading = "#{row}|  "
  end

  def number(num)
    if num.to_s.length == 1
      result = "#{num}    "
    else
      result = "#{num}   "
    end
    result
  end

  def print_row(row)
    column = 1
    while column <= @total_columns
      number = row*column
      print number(number)
      column += 1
    end
  end

  def create_table
    print column_headings
    row = 1
    while row <= @total_rows
      print row_heading(row)
      print_row(row)
      print "\n"
      row += 1
    end
  end

end

MultiplicationTable.new(9,9).create_table
