def fizzbuzz(num)
  return "fizzbuzz" if (num % 3).zero? && (num % 5).zero?

  if (num % 3).zero?
    "fizz"
  elsif (num % 5).zero?
    "buzz"
  else
    num
  end
end
