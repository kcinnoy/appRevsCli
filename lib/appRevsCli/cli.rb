class AppRevsCli::CLI

  def call
    header
    AppRevsCli::Scraper.new.scrape_categories
    list_categories
    menu
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
    puts "\n What software would you like to browse? (select options [1] to [#{}] )"
  end



end
