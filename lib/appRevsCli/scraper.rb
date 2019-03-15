class AppRevsCli::Scraper




  def scrape_categories
    site = "https://www.getapp.com"
    @doc = Nokogiri::HTML(open(site))
    category_section = @doc.search("a.popular-categories-card")
    category_links = category_section
    category_links.each do |link|
      category = AppRevsCli::Category.new

      category.name = link.css("p.popular-categories-link").text
      category.url = "#{site}#{link.attr("href")}"

      category.save
    end
  end

  def scrape_apps(site)
    @doc = Nokogiri::HTML(open(site))
    list_section = @doc.search("div.serp-listings")
    list_section.each do |app|
      app_name = list_section("h2.listing-title")
      app2 = liist
    end





  end

end
