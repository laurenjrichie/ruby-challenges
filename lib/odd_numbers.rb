class OddPrinter

  def initialize(max)
    @max = max
  end

  def print_odds
    i = 1
    odds = []

    while i <= @max
      odds << i
      i += 2
    end
    odds.join(", ")
  end

end

printer = OddPrinter.new(19)
p odds = printer.print_odds
