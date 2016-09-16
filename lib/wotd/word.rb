class Wotd::Word
  attr_accessor :wotd, :definition, :example, :fact

  def self.today
    word = []
    word << self.scrape_word
    word
  end

  def self.scrape_word
    # go to site, find wotd
    # extract properties
    # instantiate word
    word = self.new
    word.wotd = "wotd"
    word.definition = "definition"
    word.example = "example"
    word.fact = "fact"
    word
  end
  
end