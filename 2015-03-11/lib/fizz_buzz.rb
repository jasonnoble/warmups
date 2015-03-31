class Fixnum
  def to_fizz
    if self % 3 == 0
      self % 5 == 0 ? 'FizzBuzz' : 'Fizz'
    else
      self % 5 == 0 ? 'Buzz' : self
    end
  end
end
