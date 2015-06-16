# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

post1 = Post.create(title: 'Google', url: 'http://www.google.com', description: 'Simple post linking to google.')
post2 = Post.create(title: 'Yahoo', url: 'http://www.yahoo.com', description: 'Simple post linking to yahoo.')

user = User.create(username: 'Steve')
user2 = USer.create(username: 'Bob')

post1.creator = user
post2.creator = user

comment1 = Comment.create(body: 'Great first post')
comment2 = COmment.create(body: 'This post is boring.')

user2.comments << comment1
user2.comments << comment2

cat1 = Category(name: 'Search')
cat2 = Category(name: 'Short')
cat3 = Category(name: 'google')

post1.categories << cat1
post1.categories << cat2
post1.categories << cat3

post2.categories << cat1
post2.categories << cat2
