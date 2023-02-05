# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  arr_sum = arr.sum
  return arr_sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  return arr.max(2).sum
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  arr.sort!
  i = 0
  j = arr.length()-1
  while (i<j)
    if arr[i]+arr[j] == number
      return true
    elsif arr[i]+arr[j] < number
      i = i + 1
    else
      j = j - 1
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  if string.empty?
    return false
  end
  str = string.downcase
  if str.chr.match?(/[a-z]/)&&!['a','e','i','o','u'].include?(str.chr)  
    return true
  end
  return false
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  if string == "0"
    return true
  end
  if string.chars.all? {|x|x =~ /[01]/} && string.chars.last(2).join() == "00"
    return true
  end
  return false
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError.new("ISBN number string is empty") if isbn.empty?
    raise ArgumentError.new("price is less than or equal to zero") if price<=0 
    @isbn = isbn
    @price = price
  end
  def isbn
    @isbn
  end
  def price
    @price
  end
  def isbn=(isbn)
    @isbn = isbn
  end
  def price=(price)
    @price = price
  end
  def price_as_string
    return "$#{'%.2f'%price}"
  end
end
