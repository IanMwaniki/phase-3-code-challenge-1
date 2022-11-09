require_relative "./article.rb"
require_relative "./magazine.rb"
class Author
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def magazines
    self.articles.map do |article|
      article.magazine
    end.uniq
  end

  def topic_areas
    self.articles.map do |article|
      article.magazine.category
    end
  end

  def articles
    Article.all.select do |article|
      article.author == self
    end
  end

  def add_article(magazine,title)
    Article.new(self,magazine,title)
  end
end


