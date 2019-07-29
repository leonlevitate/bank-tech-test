class Account
  attr_reader :balance, :statement

  def initialize
    @balance = 0
    @statement = []
  end

  def credit(deposit, date = date_of_transaction)
    @balance += deposit
    @statement.push(deposit, date_of_transaction)
  end

  def debit(withdrawal, date = date_of_transaction)
    @balance -= withdrawal
    @statement.push(withdrawal, date_of_transaction)
  end

  def display
    @statement << @balance
    p @statement.last
  end

  def date_of_transaction
    Time.now.strftime("%d/%m/%Y")
  end

end

