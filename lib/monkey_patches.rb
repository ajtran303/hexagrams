
class String
  def integer?
    self.to_i.to_s == self
  end
end

class Integer
  def one?
    self == 1
  end
end