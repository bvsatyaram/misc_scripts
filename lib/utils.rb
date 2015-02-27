class Object
  def try(method_name)
    if self.nil?
      return nil
    else
      return self.send(method_name)
    end
  end
end
