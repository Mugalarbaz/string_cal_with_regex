# strng calculator

# /n * %


# "1/n5,7"
# "//;\n1;5"
# "//[*][%]\n1*2%3"


def string_calculator(input)
  comma = ','

  if input.start_with?("//")
    comma = input[2..].split("\n")[0].split(/[\[\]]+/)
    input = input.split("\n")[1]
  end

  sum = input.scan(/(-?\d+)(?:#{comma})?/).sum { |match| match[0].to_i }

  sum
end

puts string_calculator("1\n5,7")       
puts string_calculator("//;\n1;5")      
puts string_calculator("//[*][%]\n1*2%3")



