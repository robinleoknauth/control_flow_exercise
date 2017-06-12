# EASY

# Return the argument with all its lowercase characters removed.
def destructive_uppercase(str)
  str.chars.reject { |ch| ch == ch.downcase }.join
end

# Return the middle character of a string. Return the middle two characters if
# the word is of even length, e.g. middle_substring("middle") => "dd",
# middle_substring("mid") => "i"
def middle_substring(str)
  return str[str.length / 2 - 1..str.length / 2] if str.length.even?
  str[str.length / 2]
end

# Return the number of vowels in a string.
VOWELS = %w(a e i o u)
def num_vowels(str)
  str.chars.count { |ch| VOWELS.include?(ch.downcase) }
end

# Return the factoral of the argument (num). A number's factorial is the product
# of all whole numbers between 1 and the number itself. Assume the argument will
# be > 0.
def factorial(num)
  (1..num).inject(:*)
end


# MEDIUM

# Write your own version of the join method. separator = "" ensures that the
# default seperator is an empty string.
def my_join(arr, separator = "")
  result = ""
  arr.each_with_index do |ch, i|
    result << ch
    result << separator unless i == arr.length - 1
  end
  result

end

# Write a method that converts its argument to weirdcase, where every odd
# character is lowercase and every even is uppercase, e.g.
# weirdcase("weirdcase") => "wEiRdCaSe"
def weirdcase(str)
  result = ""
  str.chars.each_with_index do |ch, i|
    result << ch.upcase if i.odd?
    result << ch.downcase if i.even?
  end
  result
end

# Reverse all words of five more more letters in a string. Return the resulting
# string, e.g., reverse_five("Looks like my luck has reversed") => "skooL like
# my luck has desrever")
def reverse_five(str)
  words = str.split(" ")
  words.map! do |word|
    if word.length > 4
      word.reverse!
    else
      word
    end
  end
  words.join(" ")
end

# Return an array of integers from 1 to n (inclusive), except for each multiple
# of 3 replace the integer with "fizz", for each multiple of 5 replace the
# integer with "buzz", and for each multiple of both 3 and 5, replace the
# integer with "fizzbuzz".
def fizzbuzz(n)
  (1..n).to_a.map do |el|
    if el % 15 == 0
      "fizzbuzz"
    elsif el % 3 == 0
      "fizz"
    elsif el % 5 == 0
      "buzz"
    else
      el
    end
  end
end


# HARD

# Write a method that returns a new array containing all the elements of the
# original array in reverse order.
def my_reverse(arr)
  arr.reverse
end

# Write a method that returns a boolean indicating whether the argument is
# prime.
def prime?(num)
  return false if num == 1
  (2..num / 2).each do |i|
    return false if num % i == 0
  end
  true
end

# Write a method that returns a sorted array of the factors of its argument.
def factors(num)
  arr = []
  (1..num).each do |i|
    arr << i if num % i == 0
  end
  arr
end

# Write a method that returns a sorted array of the prime factors of its argument.
def prime_factors(num)
  factors(num).select { |i| prime?(i) }
end

# Write a method that returns the number of prime factors of its argument.
def num_prime_factors(num)
  factors(num).select { |i| prime?(i) }.count
end


# EXPERT

# Return the one integer in an array that is even or odd while the rest are of
# opposite parity, e.g. oddball([1,2,3]) => 2, oddball([2,4,5,6] => 5)
def oddball(arr)
  if arr.count(&:even?) == 1
    arr.select(&:even?)[0]
  else
    arr.select(&:odd?)[0]
  end
end
