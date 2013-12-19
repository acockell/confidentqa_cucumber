Given /I have started the calculator/ do
#  @right_triangle = Pythagorean.new
end

Given /I have entered (.*) into the calculator first/ do |value|
  @right_triangle.side_one value
end

Given /I have entered (.*) into the calculator second/ do |value|
   @right_triangle.side_two value
end

When /I request the hypotenuse/ do
  @right_triangle.hypotenuse
end

When /I request the third side/ do
  @right_triangle.side
end

Then /I should see (.*) as the final value/ do |value|
  expect(@right_triangle.final.to_s).to eq(value)
end

