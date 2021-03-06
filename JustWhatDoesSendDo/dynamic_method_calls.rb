class Glider
  def lift
    puts "Rising"
  end

  def bank
    puts "Turning"
  end
end

class Nomad
  def initialize(glider)
    @glider = glider
  end

  def do(action)
    if action == 'lift'
      @glider.lift
    elsif action == 'bank'
      @glider.bank
    else
      raise NoMethodError.new(action)
    end
  end
end

nomad = Nomad.new(Glider.new)
nomad.do("lift")
nomad.do("bank")


class Nomad
  def initialize(glider)
    @glider = glider
  end

  def do(action)
    @glider.send(action)
  end
end

class Nomad
  def initialize(glider)
    @glider = glider
  end

  def do(action, argument = nil)
    if argument == nil
      @glider.send(action)
    else
      @glider.send(action, argument)
    end
  end