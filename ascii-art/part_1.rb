def triangle(rows)
  star_counter = 1
  space_counter = rows - 1
  while space_counter > 0
    stars = "*"*star_counter
    spaces = " "*space_counter
    puts "#{spaces}#{stars}"
    star_counter += 2
    space_counter -=1
  end
end

triangle(10)
