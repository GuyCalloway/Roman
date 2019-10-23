
class RomanNumerals
  def initialize
    @numeral = ''
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
      hash2.each_with_index { |(numeral, value), index| ((@integer / value)+1).times {chipper(value, numeral, true, index)}}
      @integer.times { @numeral << 'M' }
      @integer = @integer1 - ((@integer1/1000)*1000)
    end

    hash.each_with_index { |(numeral, value), index| ((@integer / value)+1).times {chipper(value, numeral, false, index)}}
    @integer.times { @numeral << 'I' }

    @numeral
  end

  def chipper(numeral_value, numeral, mil, index)
    pre(index, numeral_value, numeral, mil)
    if @integer >= numeral_value
          @numeral << numeral
          @integer -= numeral_value
    end
  end


    # if mil
    #   chipwhat(numeral_value, numeral)
    # else
    #   # 0s checker for calcs
    #   if (@integer/100 == (numeral_value/100 - 1)) && (@integer > 100)
    #     @numeral << 'C' + numeral
    #     @integer -= (numeral_value - 100)
    #   end

    #   if (@integer/10 == (numeral_value/10 - 1)) && (@integer > 10)
    #     @numeral << 'X' + numeral
    #     @integer -= (numeral_value - 10)
    #   end

    #   if (@integer == numeral_value - 1) && (@integer > 1)
    #     @numeral << 'I' + numeral
    #     @integer -= (numeral_value - 1)
    #   end

    #   if @integer >= numeral_value
    #     @numeral << numeral
    #     @integer -= numeral_value
    #   end
    # end
  # end

  def pre(index, numeral_value, numeral, mill)
    arr = ["M", "D", "C", "L", "X", "V", "I"]
    if mill
      arr = ["(M)", "(D)", "(C)", "(L)", "(X)", "(V)", "(I)"]
    end

    if index % 2 == 0
      nom = numeral_value/10
      if (@integer/nom == (numeral_value/nom - 1)) && (@integer > nom)
        @numeral << arr[index + 2] + numeral
        @integer -= (numeral_value - nom)
      end
      
    else
      nom = numeral_value/5
      p arr[index + 1]
      if (@integer/nom == (numeral_value/nom - 1)) && (@integer > nom)
        @numeral << arr[index + 1] + numeral
        @integer -= (numeral_value - nom)
      end
    end
  end
  
  # def chipwhat(numeral_value, numeral)
  #   if (@integer/100 == (numeral_value/100 - 1)) && (@integer > 100)
  #     @numeral << '(C)' + numeral
  #     @integer -= (numeral_value - 100)
  #   end

  #   if (@integer/10 == (numeral_value/10 - 1)) && (@integer > 10)
  #     @numeral << '(X)' + numeral
  #     @integer -= (numeral_value - 10)
  #   end

  #   if (@integer == numeral_value - 1) && (@integer < 10)
  #     @numeral << 'M' + numeral
  #     @integer -= (numeral_value - 1)
  #   end

  #   if @integer >= numeral_value
  #     @numeral << numeral
  #     @integer -= numeral_value
  #   end

  # end

end



