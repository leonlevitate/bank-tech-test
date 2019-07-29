class Account
  
  attr_reader :balance

  def initialize
    @balance = 0
  end
  
  def credit(cash)
    @balance += cash
  end
  
end