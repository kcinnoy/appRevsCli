class appRevsCli::Category

  attr_accessor :name, :url, :application

  @@all = []

  def save
    @@all << self
  end

  #class methods
  def self.all
    @@all
  end

end
