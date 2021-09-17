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
    expect(fizzbuzz(15)).to eq 'fizzbuzz'
  end

  it 'return "fizz" when passed multiples of 3 that are not multiples of 5' do
    multiples_of_three = [3, 6, 9, 12, 18, 21]
    result = []

    multiples_of_three.each { |num| result << fizzbuzz(num) }

    expect(result).to eq Array.new(multiples_of_three.length, 'fizz')
  end
end
