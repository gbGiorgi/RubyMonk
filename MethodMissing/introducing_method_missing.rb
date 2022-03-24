class Spy
end

Spy.new.hello # NoMethodError: undefined method `hello'

class Spy
  def method_missing(sym)
  end
end
