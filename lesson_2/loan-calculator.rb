def number?(num)
  if num == num.to_i.to_s
    true
  elsif num == num.to_f.to_s
    true
  else
    false
  end
end

def prompt(string)
  puts("=> #{string}")
end

prompt("Welcome to the Loan Calculator!")

loan_amount = ''
loop do
  prompt("Please enter the loan amount:")
  loan_amount = Kernel.gets().chomp()

  break if number?(loan_amount)

  prompt("Please enter a valid number")
end

interest_rate_months = ''
loop do
  prompt("Please enter the APR amount (eg. 5% = 0.05):")
  interest_rate_months = Kernel.gets().chomp()

  break if number?(interest_rate_months)

  prompt("Please enter a valid number")
end

duration_months = ''
loop do
  prompt("Please enter the loan duration in months:")
  duration_months = Kernel.gets().chomp()

  break if number?(duration_months)

  prompt("Please enter a valid number")
end

monthly_payment = loan_amount.to_f * ((interest_rate_months.to_f / 12) / (1 - (1 + (interest_rate_months.to_f / 12))**(-duration_months.to_i)))

prompt("Your monthly payment is #{monthly_payment}!")
