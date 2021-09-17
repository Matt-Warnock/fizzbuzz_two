require "fizzbuzz"

describe "#fizzbuzz" do
  it 'returns "fizz" when passed 3' do
    expect(fizzbuzz(3)).to eq "fizz"
  end

  it 'returns "buzz" when passed 5' do
    expect(fizzbuzz(5)).to eq "buzz"
  end

  it "returns 1 when passed 1" do
    expect(fizzbuzz(1)).to eq 1
  end

  it 'returns "fizzbuzz" when passed 15' do
    expect(fizzbuzz(15)).to eq "fizzbuzz"
  end

  it 'return "fizz" when passed multiples of 3 that are not multiples of 5' do
    multiples_of_three = [3, 6, 9, 12, 18, 21]
    result = []

    multiples_of_three.each { |num| result << fizzbuzz(num) }

    expect(result).to eq Array.new(multiples_of_three.length, "fizz")
  end

  it 'return "buzz" when passed multiples of 5 that are not multiples of 3' do
    multiples_of_five = [5, 10, 20, 25, 35, 40]
    result = []

    multiples_of_five.each { |num| result << fizzbuzz(num) }

    expect(result).to eq Array.new(multiples_of_five.length, "buzz")
  end

  it 'return "fizzbuzz" when passed multiples of 3 and 5' do
    multiples_of_three_and_five = [15, 30, 45, 60, 75, 90]
    result = []

    multiples_of_three_and_five.each { |num| result << fizzbuzz(num) }

    expect(result).to eq Array.new(multiples_of_three_and_five.length, "fizzbuzz")
  end

  it "return number passed when number is not a multiple of 3 or 5" do
    non_multiple = [1, 2, 4, 8, 11, 13]
    result = []

    non_multiple.each { |num| result << fizzbuzz(num) }

    expect(result).to eq non_multiple
  end
end
