require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@story = Story.create({title: "The Amazing Test Story", page_count: 0})

# Create seed page
Page.create({
  :title => Faker::Lorem.sentence,
  :content => Faker::Lorem.paragraph(sentence_count = 10),
  :parent_id => 0,
  :story_id => @story.id })

# Create three choices and corresponding child pages
i = 1
3.times do
  Choice.create({
    :page_id => 1,
    :child_id => (i + 1) })
  Page.create({
    :title => Faker::Lorem.sentence,
    :parent_id => i,
    :story_id => @story.id })
  @story.page_count += 1
  @story.save
  i += 1
end
