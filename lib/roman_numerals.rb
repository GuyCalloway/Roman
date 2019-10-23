
class RomanNumerals
  def initialize
    @numeral = ''
    @numeral1 = ''
    @integer = 0
    @integer1 = 0
  end

  def translate(integer)

    @integer = integer

    hash =  {'M' => 1000, 'D' => 500, 'C' => 100, 'L' => 50, 'X' => 10, 'V' => 5}

    if @integer/1000 >= 4
      @integer1 = @integer
      @integer = (@integer/1000)
      hash2 = {'(M)' => 1000, '(D)' => 500, '(C)' => 100, '(L)' => 50, '(X)' => 10, '(V)' => 5}
      hash2.each { |numeral, value| ((@integer / value)+1).times {chipper(value, numeral, true)}}
      @integer.times { @numeral << 'M' }
      @integer = @integer1 - ((@integer1/1000)*1000)
    end

    hash.each { |numeral, value| ((@integer / value)+1).times {chipper(value, numeral, false)}}
    @integer.times { @numeral << 'I' }

    @numeral
  end

  def chipper(numeral_value, numeral, mil)
    if mil
      chipwhat(numeral_value, numeral)
    else
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

  # def pre(numeral_value, numeral)
  #   if @integer/(numeral_value/10) && (@integer > (numeral_value/10))


  
  def chipwhat(numeral_value, numeral)
    if (@integer/100 == (numeral_value/100 - 1)) && (@integer > 100)
      @numeral << '(C)' + numeral
      @integer -= (numeral_value - 100)
    end

    if (@integer/10 == (numeral_value/10 - 1)) && (@integer > 10)
      @numeral << '(X)' + numeral
      @integer -= (numeral_value - 10)
    end

    if (@integer == numeral_value - 1) && (@integer < 10)
      @numeral << 'M' + numeral
      @integer -= (numeral_value - 1)
    end

    if @integer >= numeral_value
      @numeral << numeral
      @integer -= numeral_value
    end

  end

end



