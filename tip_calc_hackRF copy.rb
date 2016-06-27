class TipCalculator
  def ask_for_bill
    puts "What is the total bill amount?"
    bill = gets.chomp.to_f.abs

    while bill <= 0 do
      p "You have to pay for something. What is your bill amount?"
      bill = gets.chomp.to_f
    end
  end

  def ask_for_tip
    puts "What is the tip amount you would like to add?(DO not give a decimal)"
    tip= gets.chomp.to_f

    while (tip < 0) || (tip > 100) do
      p "Give me a number between 1-100"
      tip = gets.chomp
    end
  end

  def ask_for_people
    puts " Are you splitting the bill? ('Yes' or 'No')"
    split = gets.chomp
      if split= "yes" || "y"
        puts "How many people are splitting the bill?"
        people = gets.chomp
        while people.is_a? (Integer) do
        p "You cant have part of a person. How many people are you splitting at the bill?"
        people = gets.chomp
      else
        p "The total bill with tip of #{tip}% is #{total_bill}."
      end
  end

end

tc = TipCalculator.new
tc.ask_for_bill
tc.ask_for_tip
tc.ask_for_people
t_bill - tc.caclulate_bill(tip_percent_amount)

# puts "What is the total bill amount?"
# bill = gets.chomp.to_f

# while bill <= 0 do
#   p "You have to pay for something. What is your bill amount?"
#   bill = gets.chomp.to_f
# end

# puts "What is the tip amount you would like to add?(DO not give a decimal)"
# tip= gets.chomp.to_f
#
# while (tip < 0) || (tip > 100) do
#   p "Give me a number between 1-100"
#   tip = gets.chomp
# end

# puts " Are you splitting the bill? ('Yes' or 'No')"
# split = gets.chomp
#   if split= "yes" || "y"
#     puts "How many people are splitting the bill?"
#     people = gets.chomp
#     while people.is_a? (Integer) do
#     p "You cant have part of a person. How many people are you splitting at the bill?"
#     people = gets.chomp
#   else
#     p "The total bill with tip of #{tip}% is #{total_bill}."
#   end
#     end


tip_percent = (tip/100)
tip_amount = bill * tip_percent
total_bill = (bill + tip_amount)
person_bill = (total_bill / people.to_i)
missing_money = (total_bill) - (person_bill * people.to_i)
money_toadd = (person_bill + missing_money)
people_payref = (people.to_i - 1)

p "The total bill with tip of #{tip}% is #{total_bill}."
# p "Each persons pays #{person_bill}."

if (person_bill * people.to_i) != total_bill
  p "1 person needs to pay $#{'%.2f' % money_toadd} and #{people_payref} need to pay  $#{'%.2f '% person_bill}."
else
  p "Each persons pays #{'%.2f '% person_bill}."
end
