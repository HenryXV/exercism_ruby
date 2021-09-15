module SavingsAccount
  def self.interest_rate(balance)
    case balance
    when 0..999.999
      0.5
    when 1000..4999.999
      1.621
    when 5000..Float::INFINITY
      2.475
    else
      -3.213
    end
  end
  def self.annual_balance_update(balance)
    (balance.abs * (interest_rate(balance)/100)) + balance
  end
  def self.years_before_desired_balance(current_balance, desired_balance)
    counter = 0
    until current_balance >= desired_balance
      current_balance = annual_balance_update(current_balance)
      puts counter
      counter += 1
    end
    counter
  end
end