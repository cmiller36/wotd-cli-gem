class Wotd::CLI

  def call
    list_word
    menu
  end

  def list_word
    puts "************* Word of the Day *************"
    @word = Wotd::Word.today
    @word.each do |word|
      puts ""
      puts "----------   #{word.wotd}   ----------".colorize(:cyan)
      puts ""
      puts "Definition- #{word.definition}"
    end
  end

  def wotd_info
    @word = Wotd::Word.today
    @word.each do |word|
      puts "*********** Example of #{word.wotd} **********"
      puts ""
      puts "#{word.example}"
      puts ""
      puts "---------- Did you know? ----------"
      puts "#{word.fact}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts ""
      puts "Would you like to see more info? Y/N or exit to end program"
      puts ""
      input = gets.strip.downcase

      if input == "y"
        wotd_info
      elsif input == "n"
        list_word
      elsif input == "exit"
        puts "Goodbye, See you tomorrow!"
      end
    end
  end

end
