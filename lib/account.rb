class Account
  attr_reader :balance, :statement

  def initialize
    @balance = 0
    @statement = []
  end

  def credit(cash, date = date_of_transaction)
    @balance += cash
    @statement.push(cash, date_of_transaction)
  end

  def debit(cash, date = date_of_transaction)
    @balance -= cash
    @statement.push(cash, date_of_transaction)
  end

  def display
    @statement << @balance
    p @statement.last
  end

  def date_of_transaction
    Time.now
  end

end

