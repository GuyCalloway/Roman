
class RomanNumerals

  def initialize
    @numeral = ''
    @integer = 0
    @integer1 = 0
    @hash =  {'M' => 1000, 'D' => 500, 'C' => 100, 'L' => 50, 'X' => 10, 'V' => 5}
    @hash2 = {'(M)' => 1000, '(D)' => 500, '(C)' => 100, '(L)' => 50, '(X)' => 10, '(V)' => 5}
  end

  def translate(integer)
    @integer = integer

    if @integer/1000 >= 4
      above_4_thousand
    end

    below_thousand
    @numeral
  end

  def below_thousand
    @hash.each_with_index { |(numeral, value), index| ((@integer / value)+1).times {chipper(value, numeral, false, index)}}
    @integer.times { @numeral << 'I' }
  end

  def above_4_thousand
      @integer1 = @integer
      @integer = (@integer/1000)
      @hash2.each_with_index { |(numeral, value), index| ((@integer / value)+1).times {chipper(value, numeral, true, index)}}
      @integer.times { @numeral << 'M' }
      @integer = @integer1 - ((@integer1/1000)*1000)
  end

  def chipper(numeral_value, numeral, mil, index)
    pre(index, numeral_value, numeral, mil)
    if @integer >= numeral_value
          @numeral << numeral
          @integer -= numeral_value
    end
  end

  def pre(index, numeral_value, numeral, mill)
    arr = array(mill)

    if index % 2 == 0
      nom = numeral_value/10
      if (@integer/nom == (numeral_value/nom - 1)) && (@integer > nom)
        @numeral << arr[index + 2] + numeral
        @integer -= (numeral_value - nom)
      end
    else
      nom = numeral_value/5
      if (@integer/nom == (numeral_value/nom - 1)) && (@integer > nom)
        @numeral << arr[index + 1] + numeral
        @integer -= (numeral_value - nom)
      end
    end
  end

  def array(mill)
    if mill
      arr = ["(M)", "(D)", "(C)", "(L)", "(X)", "(V)", "M"]
    else
      arr = ["M", "D", "C", "L", "X", "V", "I"]
    end
  end
end



