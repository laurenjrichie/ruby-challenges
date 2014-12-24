def triangle(character, rows)
  character_count = 1
  space_count = rows - 1
  while space_count > 0
    characters = character*character_count
    spaces = " "*space_count
    puts "#{spaces}#{characters}"
    character_count += 2
    space_count -=1
  end
end

puts "What character do you want to make the pyramid out of?"
character = gets.chomp
puts "How many rows of #{character}'s do you want?"
rows = gets.chomp.to_i
triangle(character, rows)
