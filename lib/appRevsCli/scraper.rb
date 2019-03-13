class AppRevsCli::Scraper

  def scrape_category
  end

  def scrape_categories
    site = "https://www.getapp.com/"
    @doc = Nokogiri::HTML(open(site))
    test = @doc.search("div.card popular-categories-card text-center")


    test

  end





end
