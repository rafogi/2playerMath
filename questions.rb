class Questions
  attr_accessor :answer, :print

  def initialize
    @num1 = 1 + rand(20)
    @num2 = 1 + rand(20)
    @answer = @num1 + @num2
    @print = "what is #{@num1} + #{@num2}"
  end
end

