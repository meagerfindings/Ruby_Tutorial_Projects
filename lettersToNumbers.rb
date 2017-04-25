puts "Please type a sentence and press enter..."
input = gets.chomp

puts "\n" + "This is your sentence covnerted into numbers: \n"

inputToInt = ""
inputLoopCounter = 0


lowerCaseAlphas = "abcdefghijklmnopqrstuvwxyz"
upperCaseAlphas = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

input.each_char do |i|
  inputLoopCounter = inputLoopCounter + 1

  if i == " "
    inputToInt << 0.to_s

    if inputLoopCounter < input.length
      inputToInt << " "
    end

  elsif lowerCaseAlphas.include? i

    upperLoopCounter = 0

    lowerCaseAlphas.each_char do |lowerLoop|
      upperLoopCounter = upperLoopCounter + 1

      if i == lowerLoop

        inputToInt << upperLoopCounter.to_s

        if inputLoopCounter < input.length
          inputToInt << " "
        end

        break

      end

    end

  elsif upperCaseAlphas.include? i

    lowerLoopCounter = 0

    upperCaseAlphas.each_char do |upperLoop|
      lowerLoopCounter = lowerLoopCounter + 1

      if i == upperLoop

        inputToInt << lowerLoopCounter.to_s

        if inputLoopCounter < input.length
          inputToInt << " "
        end

        break

      end

    end

  else

    inputToInt << i

    if inputLoopCounter < input.length
      inputToInt << " "
    end

  end

end

puts inputToInt
