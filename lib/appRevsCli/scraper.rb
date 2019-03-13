class AppRevsCli::Scraper

  def scrape_category
  end

  def scrape_categories
    site = "https://www.getapp.com/"
    @doc = Nokogiri::HTML(open(site))
    categories = @doc.search("p.popular-categories-link")



  end


  #start index list numbering from (1)
  categories.each.with_index(1) do |category, index|
    puts "#{index}) #{category.text}"
  end



end
