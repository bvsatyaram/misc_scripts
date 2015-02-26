# Given a number, convert it to string

def num_to_str(num)
  negative = (num < 0)
  num = 0 - num if negative 
  int = num.floor
  str = int_to_str(int)
  if int != num
    precision = 0
    while num.floor != num
      precision += 1
      num *= 10
    end
    num %= 10**precision
    str = str + "." + int_to_str(num.floor)
  end

  str = "-"+str if negative

  return str
end

def int_to_str(num)
  str = ""
  while num > 0
    str = (num%10+48).chr + str
    num /= 10
  end

  str = "0" if str == ""

  return str
end

def assert(num, str)
  if num_to_str(num) == str
    puts "Pass"
  else
    puts "Fail. Expected: #{str}, got #{num_to_str(num)}"
  end
end

assert 0, "0"
assert 1, "1"
assert 1234, "1234"
assert 12.34, "12.34"
assert 123, "123"
assert 12.340, "12.34"
assert 0.12, "0.12"
assert -123, "-123"
assert -0.25, "-0.25"
assert -12.34, "-12.34"
