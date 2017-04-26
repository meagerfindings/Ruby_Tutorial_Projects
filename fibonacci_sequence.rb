puts "\nPlease input an integer representing how many times you want to run the Fibbonacci sequence: \n"

iterationNumberInput = gets.chomp.to_i

fibNum = 0
fibOne = 0
fibTwo = 1

i = 0
while i < iterationNumberInput do
  fibNum = fibOne + fibTwo
  fibOne = fibTwo
  fibTwo = fibNum

  i += 1
end

puts "\nFibbonacci number: "
puts fibNum
