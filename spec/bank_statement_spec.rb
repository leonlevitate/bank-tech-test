# frozen_string_literal: true

require 'bank_statement'

RSpec.describe BankStatement do
  let(:bank_statement) { BankStatement.new }
  let(:date) { Time.now.strftime('%d/%m/%Y') }
  let(:statement1) { double :statement1 }

  it 'generates a bank statement with formatting' do
    statement1 = [{ date: date, credit: 2000, debit: nil, balance: 2000 },
                 { date: date, credit: nil, debit: 100, balance: 1900 },
                 { date: date, credit: 400, debit: nil, balance: 2300 }]
    expect(bank_statement.create_statement(statement1)).to eq [{ date: date, credit: 2000, debit: nil, balance: 2000 },
                                                              { date: date, credit: nil, debit: 100, balance: 1900 },
                                                              { date: date, credit: 400, debit: nil, balance: 2300 }]
  end

  it 'creates a bank statement' do
    expect(bank_statement).to receive(:create_statement)
    bank_statement.create_statement(statement1)
  end
end
