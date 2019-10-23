
class RomanNumerals
  def initialize
    @numeral = ''
    @integer = 0
  end

  def translate(integer)
    hash =  {'D' => 500, 'C' => 100, 'L' => 50, 'X' => 10, 'V' => 5}

    @integer = integer

    hash.each{ |k, v| ((@integer / v)+1).times {chipper(v, k)}}
  
  
    # ((@integer / 500)+1).times {chipper(500, 'D')}
    # ((@integer / 100)+1).times {chipper(100, 'C')}
    # ((@integer / 50)+1).times {chipper(50, 'L')}
    # ((@integer / 10)+1).times {chipper(10, 'X')}
    # chipper(5, 'V')

    @integer.times { @numeral << 'I' }
    @numeral
  end

  def chipper(numeral_value, numeral)
    # 0s checker for calcs
    if (@integer/100 == (numeral_value/100 - 1)) && (@integer > 100)
      @numeral << 'C' + numeral
      @integer -= (numeral_value - 100)
    end

    if (@integer/10 == (numeral_value/10 - 1)) && (@integer > 10)
      @numeral << 'X' + numeral
      @integer -= (numeral_value - 10)
    end

    if (@integer == numeral_value - 1) && (@integer < 10)
      @numeral << 'I' + numeral
      @integer -= (numeral_value - 1)
    end
    

    if @integer >= numeral_value
      @numeral << numeral
      @integer -= numeral_value
    end
  end
end



