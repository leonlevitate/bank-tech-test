# frozen_string_literal: true

require 'bank_statement'

RSpec.describe BankStatement do
  let(:bank_statement) { BankStatement.new }

  it 'generates a bank statement with formatting' do
    statement = [{ date: '30/07/2019', credit: 2000, debit: nil, balance: 2000 },
                 { date: '30/07/2019', credit: nil, debit: 100, balance: 1900 },
                 { date: '30/07/2019', credit: 400, debit: nil, balance: 2300 }]
    expect(bank_statement.create_statement(statement)).to eq [{ date: '30/07/2019', credit: 2000, debit: nil, balance: 2000 },
                                                              { date: '30/07/2019', credit: nil, debit: 100, balance: 1900 },
                                                              { date: '30/07/2019', credit: 400, debit: nil, balance: 2300 }]
  end

  it 'creates a bank statement' do
    expect(bank_statement).to receive(:create_statement)
    bank_statement.create_statement(@statement)
  end
end
