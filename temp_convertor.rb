def prompt
  puts "Type '1' to convert from Celsius to Fahrenheit\n
      OR Type '2' to convert from Fahrenheit to Celsius"
  @convertor_choice = gets.chomp
end

def celsius_to_fahrenheit
  puts "Enter Celsius Temperature:"
  celsius = gets.chomp.to_f
  fahrenheit = celsius*(9/5.to_f) + 32
  puts "#{celsius} degrees Celsius is equal to #{fahrenheit.round(2)} degrees Fahrenheit."
end

def fahrenheit_to_celsius
  puts "Enter Fahrenheit Temperature:"
  fahrenheit = gets.chomp.to_f
  celsius = (fahrenheit - 32)*(5/9.to_f)
  puts "#{fahrenheit} degrees Fahrenheit is equal to #{celsius.round(2)} degrees Celsius."
end

def choose_convertor
  if @convertor_choice == "1"
    celsius_to_fahrenheit
  elsif @convertor_choice == "2"
    fahrenheit_to_celsius
  else
    puts "Not a valid choice. Please run the program again."
  end
end

prompt
choose_convertor

# put in way to loop back if choice is not 1 or 2?
