# Given a string, convert it to number

def str_to_num_alt(str)
  chars = str.chars
  num = 0
  digit = nil
  decimal_reached = false
  decimal_precision = 1.0
  chars.each do |char|
    if char.ord >= 48 && char.ord <= 57
      digit = char.ord - 48
      if decimal_reached
        decimal_precision /= 10
        num += digit*decimal_precision
      else
        num = num*10 + digit
      end
    elsif char == "."
      decimal_reached = true
    end
  end

  return num
end

def str_to_num(str)
  chars = str.chars
  num = 0
  chars.each do |char|
    if char.ord > 47 && char.ord < 58
      num = num*10 + (char.ord-48)
    end
  end
  decimal_location = str.chars.index(".")
  if decimal_location
    num = (num*1.0) / (10**(str.length - decimal_location - 1))
  end

  return num
end

def assert(str, num)
  if str_to_num(str) == num
    puts "Pass"
  else
    puts "Fail. Expected: #{num}, got #{str_to_num(str)}"
  end
end

assert "0", 0
assert "1", 1
assert "12", 12
assert "01234", 1234
assert "123400", 123400
assert "12,34,567", 1234567
assert "12.34", 12.34
assert "12.3040", 12.304