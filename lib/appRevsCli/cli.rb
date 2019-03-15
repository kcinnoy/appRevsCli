class AppRevsCli::CLI

  def coll
    puts " comment goes here"
  end

  def call
    header
    AppRevsCli::Scraper.new.scrape_categories
    menu
    list_categories
  end

  def header
    puts " ____________________________"
    puts "|         AppRevs            |"
    puts "|                            |"
    puts "|    Latest App Reviews      |"
    puts "|                            |"
    puts "|____________________________|"
  end


  def menu
    puts "\n What type of software are you interested in? (select options [1] to [#{AppRevsCli::Category.all.size}] )"
  end



end
