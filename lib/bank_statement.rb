# frozen_string_literal: true

require_relative 'account'

class BankStatement
  attr_accessor :balance, :statement

  def create_statement(statement)
    puts 'date || credit || debit || balance'
    statement.reverse_each do |item|
      puts "#{item[:date]} || #{item[:credit]} || #{item[:debit]} || #{item[:balance]}"
    end
  end
end
