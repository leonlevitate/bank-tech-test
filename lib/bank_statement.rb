require_relative './account.rb'

class BankStatement
  def view_statement(statement)
    puts 'date || credit || debit || balance'
    statement.reverse_each do |item|
      puts (item[:date]).to_s + ' || ' + (item[:credit]).to_s + ' || ' + (item[:debit]).to_s + ' || ' + (item[:balance]).to_s
    end
  end
end
