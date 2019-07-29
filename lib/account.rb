class Account
  attr_reader :balance, :statement

  def initialize
    @balance = 0
    @statement = []
  end

  def credit(deposit, date = date_of_transaction)
    @balance += deposit
    @statement << { date: date,
                    credit: deposit,
                    debit: nil,
                    balance: @balance }
  end

  def debit(withdrawal, date = date_of_transaction)
    @balance -= withdrawal
    @statement << { date: date,
                    credit: nil,
                    debit: withdrawal,
                    balance: @balance }
  end

  def display
    @statement << @balance
    @statement.last
  end

  def date_of_transaction
    Time.now.strftime('%d/%m/%Y')
  end

end

