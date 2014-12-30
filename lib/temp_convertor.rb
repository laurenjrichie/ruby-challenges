class TempConvertor

  def initialize
    puts "Type '1' to convert from Celsius to Fahrenheit\n
    OR Type '2' to convert from Fahrenheit to Celsius"
    @convertor_choice = gets.chomp
  end

  def get_c_temp
    puts "Enter Celsius Temperature:"
    gets.chomp.to_f
  end

  def get_f_temp
    puts "Enter Fahrenheit Temperature:"
    gets.chomp.to_f
  end

  def c_to_f(c)
    f = c*(9/5.to_f) + 32
    "#{c} degrees Celsius is equal to #{f.round(2)} degrees Fahrenheit."
  end

  def f_to_c(f)
    c = (f - 32)*(5/9.to_f)
    "#{f} degrees Fahrenheit is equal to #{c.round(2)} degrees Celsius."
  end

  def run
    if @convertor_choice == "1"
      puts c_to_f(get_c_temp)
    elsif @convertor_choice == "2"
      puts f_to_c(get_f_temp)
    else
      puts "Not a valid choice. Please run the program again."
    end
  end

end

convertor = TempConvertor.new
convertor.run
