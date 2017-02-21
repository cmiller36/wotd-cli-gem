class Wotd::Word
  attr_accessor :wotd, :syllables, :definition, :example, :fact 

  def self.today
    word = []
    word << self.scrape_word
    word
  end

  def self.scrape_word
    # go to site, find wotd
    # extract properties
    # instantiate word
    doc = Nokogiri::HTML(open("https://www.merriam-webster.com/word-of-the-day"))
    word = self.new
    word.wotd = doc.search("h1").last.text
    word.syllables = doc.search("div.word-attributes span.word-syllables").text
    word.definition = doc.search( '//h2[text()="Definition"]/following::p[not(preceding::h2[text()="Examples"])]' ).text
    word.example = doc.search('//*[preceding-sibling::h2[2]]').first.text
    word.fact = doc.search("div.wod-did-you-know-container p").text
    word
  end

end