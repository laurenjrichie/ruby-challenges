# Create a 9 x 9 multiplication table. Make sure to pay attention to spacing! Make it look nice!

def column_headings(columns)
  n = 1
  columns.times do
    print "    #{n}"
    n += 1
  end

  2.times do
    puts ''
  end
end

def multiplication_table(rows, columns)
  column_headings(columns)
  row = 1

  while row <= rows
    column = 1
    print "#{row}|  "
    while column <= columns
      number = row*column
      if number.to_s.length == 1
        print "#{number}    "
      else
        print "#{number}   "
      end
      column += 1
    end
    row += 1
    print "\n"
  end
end

multiplication_table(5, 10)



# 9x9:

# n = 1
# 9.times do
#   print "    #{n}"
#   n += 1
# end
# puts ''
# puts ''
#
# row = 1
#
# while row <= 9
#   column = 1
#   print "#{row}|  "
#   while column <= 9
#     number = row*column
#     if number.to_s.length == 1
#       print "#{number}    "
#     else
#       print "#{number}   "
#     end
#     column += 1
#   end
#   row += 1
#   print "\n"
# end
