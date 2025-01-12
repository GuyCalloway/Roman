require 'roman_numerals'

describe 'RomanNumerals' do

  it "returns 'I' when passed 1" do
    expect(translate(1)).to eq("I")
  end

  it "returns 'II' when passed 2" do
    expect(translate(2)).to eq("II")
  end

  it "returns 'III' when passed 3" do
    expect(translate(3)).to eq("III")
  end

  it "returns 'IV' when passed 4" do
    expect(translate(4)).to eq("IV")
  end

  it "returns 'V' when passed 5" do
    expect(translate(5)).to eq("V")
  end

  it "returns 'VI' when passed 6" do
    expect(translate(6)).to eq("VI")
  end

  it "returns 'IX' when passed 9" do
    expect(translate(9)).to eq("IX")
  end

  it "returns 'X' when passed 10" do
    expect(translate(10)).to eq("X")
  end

  it "returns 'XI' when passed 11" do
    expect(translate(11)).to eq("XI")
  end

  it "returns 'XIV' when passed 14" do
    expect(translate(14)).to eq("XIV")
  end

  it "returns 'XXIV' when passed 24" do
    expect(translate(24)).to eq("XXIV")
  end

  it "returns 'L' when passed 50" do
    expect(translate(50)).to eq("L")
  end

  it "returns 'LVI' when passed 56" do
    expect(translate(56)).to eq("LVI")
  end

  it "returns 'LIV' when passed 54" do
    expect(translate(54)).to eq("LIV")
  end

  it "returns 'LIV' when passed 54" do
    expect(translate(54)).to eq("LIV")
  end

  it "returns 'XL' when passed 40" do
    expect(translate(144)).to eq("CXLIV")
  end

  it "returns 'C' when passed 100" do
    expect(translate(100)).to eq("C")
  end

  it "returns 'CC' when passed 200" do
    expect(translate(200)).to eq("CC")
  end

  it "returns 'XC' when passed 90" do
    expect(translate(90)).to eq("XC")
  end

  it "returns 'XCIX' when passed 9" do
    expect(translate(99)).to eq("XCIX")
  end

  it "returns 'CXCIX' when passed 199" do
    expect(translate(199)).to eq("CXCIX")
  end

  it "returns 'CCCXCIV' when passed 394" do
    expect(translate(394)).to eq("CCCXCIV")
  end

  it "returns 'CD' when passed 400" do
    expect(translate(400)).to eq("CD")
  end

  it "returns 'DCCCXCIV' when passed 894" do
    expect(translate(894)).to eq("DCCCXCIV")
  end

  it "returns 'DCDXCIX' when passed 999" do
    expect(translate(999)).to eq("CMXCIX")
  end

  it "returns 'MMDLV' when passed 2555" do
    expect(translate(2555)).to eq("MMDLV")
  end

  it "returns '' when passed 0" do
    expect(translate(0)).to eq("")
  end

  it "returns '(V)M' when passed 6000" do
    expect(translate(6000)).to eq("(V)M")
  end

  it "returns '(L)(X)(X)(V)DL' when passed 75550" do
    expect(translate(75550)).to eq("(L)(X)(X)(V)DL")
  end

  it "returns '(M)(D)(V)L' when passed 1505050" do
    expect(translate(1505050)).to eq("(M)(D)(V)L")
  end

  it "returns '(M)(D)(X)(C)(V)CDXCV' when passed  1595495" do
    expect(translate(1595495)).to eq("(M)(D)(X)(C)(V)CDXCV")
  end

  it "returns '(X)(C)IX' when passed  90009" do
    expect(translate(90009)).to eq("(X)(C)IX")
  end

  it "returns '(M)(C)(M)(X)(C)M(X)CMXCIX' when passed  1999999" do
    expect(translate(1999999)).to eq("(M)(C)(M)(X)(C)M(X)CMXCIX")
  end

  it "returns '(M)(M)(M)(C)(M)(X)(C)M(X)CMXCIX' when passed  3999999" do
    expect(translate(3999999)).to eq("(M)(M)(M)(C)(M)(X)(C)M(X)CMXCIX")
  end

end