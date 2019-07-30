# frozen_string_literal: true

require 'account'

RSpec.describe Account do
  let(:account) { Account.new }

  it 'displays statement of multiple transactions' do
    account.credit(2000)
    account.debit(100)
    account.credit(400)

    expect(account.view_statement).to eq [{ date: '30/07/2019', credit: 2000, debit: nil, balance: 2000 },
                                          { date: '30/07/2019', credit: nil, debit: 100, balance: 1900 },
                                          { date: '30/07/2019', credit: 400, debit: nil, balance: 2300 }]
  end

  it 'increases the balance when a deposit is made' do
    account.credit(2000)
    expect(account.balance).to eq(2000)
  end

  it 'decreases the balance when a withdrawal is made' do
    account.debit(500)
    expect(account.balance).to eq(-500)
  end

  it 'stores all transactions and records date' do
    account.credit(200)
    account.debit(100)
    account.credit(500)
    account.debit(50)
    expect(account.statement.length).to eq(4)
  end
end
