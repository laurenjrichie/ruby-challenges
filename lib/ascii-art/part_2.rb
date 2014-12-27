class Ascii
  def get_character
    puts "What character do you want to make the pyramid out of?"
    @character = gets.chomp
  end

  def get_rows
    puts "How many rows of #{@character}'s do you want?"
    gets.chomp.to_i
  end

  def make_triangle(character, rows)
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

end

art = Ascii.new
character = art.get_character
rows = art.get_rows
art.make_triangle(character, rows)
