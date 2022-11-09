require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("Ian")
author2 = Author.new("Mwaniki")
forbes = Magazine.new("Forbes","life")
people = Magazine.new("People","mypeople")
title = "mytitle"
puts forbes.contributors
article1 = Article.new(author1, forbes,"GETTING THAT PAPER")
article2 = Article.new(author2, forbes,"GETTING  PAPER")







### DO NOT REMOVE THIS
binding.pry

0
