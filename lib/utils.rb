class Object
  def try(method_name)
    if self.nil?
      return nil
    else
      return self.send(method_name)
    end
  end
end

def assert_equal(expected, actual)
  if actual == expected
    puts "Pass"
  else
    puts "Fail- Expected: #{expected}, but got: #{actual}"
  end
end