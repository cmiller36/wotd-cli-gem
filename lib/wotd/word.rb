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
    doc = Nokogiri::HTML(open("http://www.merriam-webster.com/word-of-the-day"))
    word = self.new
    word.wotd = doc.search("h1").last.text
    word.definition = "definition"
    word.example = "example"
    word.fact = "fact"
    word
  end

end