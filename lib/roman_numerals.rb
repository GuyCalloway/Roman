  def translate(integer)
    numerals = []
    calculator(integer, numerals)
    numerals.join("")
  end

  def calculator(integer, numerals)
    hash =  {'(M)' => 1000000, '(D)' => 500000, '(C)' => 100000, '(L)' => 50000, '(X)' => 10000, '(V)' => 5000, 'M' => 1000, 'D' => 500, 'C' => 100, 'L' => 50, 'X' => 10, 'V' => 5, "I" => 1}
    hash.each_with_index { |(numeral, value), index| ((integer / value)+1).times {integer = chipper(integer, value, numeral, index, numerals)}}
  end

  def chipper(integer, numeral_value, numeral, index, numerals)
    integer = pre(integer, index, numeral_value, numeral, numerals)
    if integer >= numeral_value
          numerals << numeral
          integer -= numeral_value
    end
    return integer
  end

  def pre(integer, index, numeral_value, numeral, numerals)
    if index % 2 == 0
      numeral_value == 1 ? nom = numeral_value : nom = numeral_value/10
      integer = four9(2, nom, integer, index, numeral_value, numeral, numerals )
    else
      nom = numeral_value/5
      integer = four9(1, nom, integer, index, numeral_value, numeral, numerals )
    end
    return integer
  end

  def four9(x, nom, integer, index, numeral_value, numeral, numerals )
    arr = ["(M)", "(D)", "(C)", "(L)", "(X)", "(V)", 'M' , 'D', "C", "L", "X", "V", "I", "I", "I"]
    if (integer/nom == (numeral_value/nom - 1)) && (integer > nom)
      numerals << arr[index + x] + numeral
      integer -= (numeral_value - nom)
    end
      return integer
  end
# all functions shud be input out put and return something ** state cannot change
