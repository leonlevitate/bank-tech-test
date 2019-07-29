#frozen_string_literal: true

require 'account'

RSpec.describe Account do
  let(:account) { Account.new }

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
