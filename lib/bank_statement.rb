require_relative './account.rb'

class BankStatement
  def view_statement(statement)
    puts 'date || credit || debit || balance'
    statement.reverse_each do |item|
      puts "#{item[:date]} || #{item[:credit]} || #{item[:debit]} || #{item[:balance]}"
    end
  end
end
