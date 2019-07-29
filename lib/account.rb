class Account
  attr_reader :balance, :statement

  def initialize
    @balance = 0
    @statement = Array.new
  end

  def credit(cash)
    @balance += cash
    @statement.push(cash)
  end

  def debit(cash)
    @balance -= cash
    @statement.push(cash)
  end

  def display
    @statement << @balance
    p @statement.last
  end
end
