require_relative "./article.rb"
require_relative "./author.rb"
class Magazine
  attr_accessor :name, :category
  @@all = []
  
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def find_by_name (name)
    Magazine.all.find do |magazine|
      magazine.name == name
    end
  end

  def article_titles
    self.articles.collect do |article|
      article.title
    end
  end

  def contributors
    Articles.all.select do |article|
      article.magazine.name == self.name
    end.map do |article|
      article.name
    end
  end

  def contributing_authors
    self.contributors.select do |author|
      author.articles.count > 2
    end
  end
end
      



