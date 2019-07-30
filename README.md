# Bank tech test


## Specification

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```
### How to run the program


* `git clone`
* `bundle install`
* `run IRB in terminal`
* `require './lib/account'`
* `account = Account.new`
* `account.credit(1000)` - deposits account with £1000
* `account.credit(2000)` - deposits account with £2000
* `account.debit(500)` - withdraws account with £500
* `account.view_statement` - displays account statement with date, amount & balance) (inverse chronological order)

### How to run tests

* rspec

### Screenshot of program
![alt text](screenshot/screenshot.png?raw=true"screenshot")