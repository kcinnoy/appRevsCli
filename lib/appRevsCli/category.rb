class AppRevsCli::Category

  attr_accessor :name, :url, :application

  @@all = []

  def self.find_category_by_index(index)
    puts @@all[index-1].url
  end


  def save
    @@all << self
  end

  def add_app(app)
    app.category = self unless app.category
    @apps << app unless @apps.include?(app)
  end

  #class methods
  def self.all
    @@all
  end

  def self.list_categories
    @@all.each.with_index(1) do |category, index|
      puts "#{index}) #{category.name}"
    end
  end

end


# ategory_section = @doc.search("div.popular-categories-card")
# category_links = category_section.search("href")
# # categories = @doc.search("p.popular-categories-link")
# category_links.each do |links, index|
#
#   puts links
#
#   # new_category = AppRevsCli::Category.new
#   #
#   # category.name = category_name.text
#   # category.url =
#
# end
