# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  total=0
  arr.each{|a| total+=a}
  return total
end

def max_2_sum(arr)
  if arr.length==0 
    return 0
  elsif arr.length==1
    return arr[0]
  else
   arr.sort!
    return arr[-1]+arr[-2]
  end
end

def sum_to_n? arr, n
  i=0
  while i<arr.length do
    j=i+1
    while j<arr.length do
      if arr[i]+arr[j]==n
        return true
      end
      j+=1
    end
    i+=1
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, "+name
end

def starts_with_consonant? s
  first=s[0]
  mat=/[aeiou]/i.match(first)
  matlet=/[a-z]/i.match(first)
  if (mat == nil && matlet!=nil)
    return true
  else 
    return false
  end
end

def binary_multiple_of_4? s
  nondig= /\D/.match(s)
  dig= /\d/.match(s)
  if nondig==nil && dig!=nil
    bin=s.to_i
    return bin%4==0
  else
    return false
  end
  
  
end

# Part 3

class BookInStock

  def initialize(isbn_num, price)
    @isbn=isbn_num
    @price=price
    if price<=0.00
      raise ArgumentError, 'Price must be at least $0.00'
    end
    if isbn_num==""
      raise ArgumentError
    end
  end
  
  def isbn=(newisbn)
    @isbn=newisbn
  end
  
  def price=(newprice)
    @price=newprice
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def price_as_string
    x=sprintf("%.02f",@price)
    x="$"+x.to_s
  end

# YOUR CODE HERE
end
