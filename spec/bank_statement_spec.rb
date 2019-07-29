require 'bank_statement'

RSpec.describe BankStatement do
  let(:bank_statement) { BankStatement.new }

  it 'displays multiple transaction history' do
    statement = [{ date: '24/07/2019', credit: 2000, debit: 300, balance: 1700 },
                 { date: '30/07/2019', credit: 600, debit: 100, balance: 2200 },
                 { date: '31/07/2019', credit: 0, debit: 700, balance: 1500 }]
    expect(bank_statement.view_statement(statement)).to eq [
                 { date: '24/07/2019', credit: 2000, debit: 300, balance: 1700 },
                 { date: '30/07/2019', credit: 600, debit: 100, balance: 2200 },
                 { date: '31/07/2019', credit: 0, debit: 700, balance: 1500 }]
  end
end
