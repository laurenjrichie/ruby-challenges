class Array
  def count_evens
    count = 0
    self.each do |number|
      count += 1 if number.even?
    end
    "HI FRIEND, I AM ARRAY.  I HAVE #{count} EVEN NUMBERS.  PRETTY AWESOME YES?  I LOVE YOU GOODBYE"
  end
end

p [2,5,9,15,22,99].count_evens
