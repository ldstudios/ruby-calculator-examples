When(/^I (add|subtract|multiply|divide) "([^"]*)" and "([^"]*)"$/) do |operation, arg1, arg2|
  @hand_calculator = Ruby::Calculator::Examples::Hand.new
  @hand_calculator.assign_attributes(
    first_argument:  BigDecimal.new(arg1), 
    second_argument: BigDecimal.new(arg2)
  )
  @result = @hand_calculator.send(operation)
end

Then(/^I should have calculated "([^"]*)"$/) do |arg1|
  expect(@result).to eq(BigDecimal.new(arg1))
end