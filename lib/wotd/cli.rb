class Wotd::CLI

  def call
    list_word
    menu
  end

  def list_word
    puts "************* Word of the Day *************"
    puts "Word"
    puts " Definition"
  end

  def wotd_info
    puts "Example"
    puts "Fact"
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
