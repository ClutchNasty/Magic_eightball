require "pry"
class User
  def initialize
    @Answers = ["yes","No","maybe so","probably"]
    @AnswersOG = @Answers.clone
     
  menu
  end
def menu
  puts ""
puts "would you like to know your destiny? Or would you prefer to make your own?"
puts""
puts "'print answers' for all answers"
puts ""
puts""
puts "(if you would like to quit type 'Quit')"
puts "1-know your own"
puts ""
puts"2-make your own"
puts ""
puts "to reset answers type 'reset'"
      input = gets.strip
      case input

when "1"
  destiny
when "2"
  fate
when "print answers"
  print @Answers
  menu
when "reset"
  reset
when "Quit"
  puts "thanks for playing! Goodbye!"
  exit
else
  puts "those are not options, pls pick an option 1 or 2"
  menu
end
end

                  def destiny
                  puts ""
                  puts "what do you desire to know? (when you are finished, type 'Quit' to exit"
                  puts ""
                  input = gets.strip
                  index=rand(4)
                  answer=@Answers[index]
                  puts answer 
    
                  menu
                  end
        def fate 
        puts "type your answer here to add an asnwer"
        userinput = gets.strip
        if 
          @Answers.include? userinput
          puts "that answer already exists, try another"
          menu
        else
          @Answers << userinput
          puts "great! that answer has now been added!!"
        end
        def reset
          @Answers.replace(@AnswersOG)
          menu
        end
        menu
      
      end
end


  User.new