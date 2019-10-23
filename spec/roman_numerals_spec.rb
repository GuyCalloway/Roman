require 'roman_numerals'

describe RomanNumerals do
  let(:romanNumerals) { described_class.new }

  it "returns 'I' when passed 1" do
    expect(romanNumerals.translate(1)).to eq("I")
  end

  it "returns 'II' when passed 2" do
    expect(romanNumerals.translate(2)).to eq("II")
  end

  it "returns 'III' when passed 3" do
    expect(romanNumerals.translate(3)).to eq("III")
  end

  it "returns 'IV' when passed 4" do
    expect(romanNumerals.translate(4)).to eq("IV")
  end

  it "returns 'V' when passed 5" do
    expect(romanNumerals.translate(5)).to eq("V")
  end

  it "returns 'VI' when passed 6" do
    expect(romanNumerals.translate(6)).to eq("VI")
  end

  it "returns 'IX' when passed 9" do
    expect(romanNumerals.translate(9)).to eq("IX")
  end

  it "returns 'X' when passed 10" do
    expect(romanNumerals.translate(10)).to eq("X")
  end

  it "returns 'XI' when passed 11" do
    expect(romanNumerals.translate(11)).to eq("XI")
  end

  it "returns 'XIV' when passed 14" do
    expect(romanNumerals.translate(14)).to eq("XIV")
  end

  it "returns 'XXIV' when passed 24" do
    expect(romanNumerals.translate(24)).to eq("XXIV")
  end

  it "returns 'L' when passed 50" do
    expect(romanNumerals.translate(50)).to eq("L")
  end

  it "returns 'LVI' when passed 56" do
    expect(romanNumerals.translate(56)).to eq("LVI")
  end

  it "returns 'LIV' when passed 54" do
    expect(romanNumerals.translate(54)).to eq("LIV")
  end

  it "returns 'LIV' when passed 54" do
    expect(romanNumerals.translate(54)).to eq("LIV")
  end

  it "returns 'XL' when passed 40" do
    expect(romanNumerals.translate(144)).to eq("CXLIV")
  end

  it "returns 'C' when passed 100" do
    expect(romanNumerals.translate(100)).to eq("C")
  end

  it "returns 'CC' when passed 200" do
    expect(romanNumerals.translate(200)).to eq("CC")
  end

  it "returns 'XC' when passed 90" do
    expect(romanNumerals.translate(90)).to eq("XC")
  end

  it "returns 'XCIX' when passed 9" do
    expect(romanNumerals.translate(99)).to eq("XCIX")
  end

  it "returns 'CXCIX' when passed 199" do
    expect(romanNumerals.translate(199)).to eq("CXCIX")
  end

  it "returns 'CCCXCIV' when passed 394" do
    expect(romanNumerals.translate(394)).to eq("CCCXCIV")
  end

  it "returns 'CD' when passed 400" do
    expect(romanNumerals.translate(400)).to eq("CD")
  end

  it "returns 'DCCCXCIV' when passed 894" do
    expect(romanNumerals.translate(894)).to eq("DCCCXCIV")
  end

  it "returns 'DCDXCIX' when passed 999" do
    expect(romanNumerals.translate(999)).to eq("CMXCIX")
  end

  it "returns 'MMDLV' when passed 2555" do
    expect(romanNumerals.translate(2555)).to eq("MMDLV")
  end

  it "returns '' when passed 0" do
    expect(romanNumerals.translate(0)).to eq("")
  end

  it "returns '(V)M' when passed 6000" do
    expect(romanNumerals.translate(6000)).to eq("(V)M")
  end
end