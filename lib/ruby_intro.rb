# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  arr.sum
end

def max_2_sum(arr)
  arr.max(2).sum
end

def sum_to_n?(arr, n)
  h = {}
  arr.any? do |x|
    complement = h[n - x]
    h[x] = true
    complement
  end
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(s)
  /\A[a-z&&[^aeiou]]/i.match?(s)
end

def binary_multiple_of_4?(s)
  s == '0' || /^[01]*00$/.match(s)
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, 'ISBN cannot be blank' if isbn == ''
    raise ArgumentError, 'price must be positive' if price <= 0

    @isbn = isbn
    @price = price
  end

  def price_as_string
    format('$%.2f', price)
  end
end
