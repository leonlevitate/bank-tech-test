require_relative 'bank_statement'

class Account
  attr_reader :balance, :statement

  def initialize
    @balance = 0
    @statement = []
  end

  def credit(deposit, date = date_of_transaction)
    @balance += deposit
    @statement << { date: date,
                    credit: deposit.to_f,
                    debit: nil,
                    balance: @balance.to_f }
  end

  def debit(withdrawal, date = date_of_transaction)
    @balance -= withdrawal
    @statement << { date: date,
                    credit: nil,
                    debit: withdrawal.to_f,
                    balance: @balance.to_f }
  end

  def print_statement(bank_statement = BankStatement.new)
    bank_statement.create_statement(@statement)
  end

  private

  def date_of_transaction
    Time.now.strftime('%d/%m/%Y')
  end
end
