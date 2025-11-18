require 'faker'

puts 'Cleaning database...'
Article.destroy_all
puts 'Database cleaned!'

puts 'Creating 10 fake articles...'
10.times do
  Article.create!(
    title: Faker::Book.title,
    content: Faker::Lorem.paragraphs(number: 5).join("\n\n") # 5 paragraphs separated by newlines
  )
end
puts '10 articles created!'
