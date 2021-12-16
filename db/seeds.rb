# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

unless Author.exists?

  10.times.each do
    author = Author.new(name: FFaker::Name.unique.name)
    pp author
    author.save!
  end

  Author.all.find_each do |author|
    10.times.each do
      book = author.books.build(title: FFaker::Lorem.sentence)
      pp book
      book.save!
    end
  end

  Book.all.find_each do |book|
    100.times.each do
      page = book.pages.build(content: FFaker::Lorem.paragraph)
      pp page
      page.save!
    end
  end
end
