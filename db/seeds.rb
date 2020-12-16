# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Users = [
User.new(username: "dwane", email: "dwane@rich.com", password: "123"),
User.new(username: "clusty", email: "clusty@world.com", password: "123"),
User.new(username: "richie", email: "richie@rich.com", password: "123")
]

Items = [
Item.new(title: "Nirvana", img_src: "https://i.guim.co.uk/img/media/57667592031b5a64dfb27b227978f44bf1fde6e0/0_0_3301_3139/master/3301.jpg?width=620&quality=85&auto=format&fit=max&s=aebe466adce4fa106f6e6a7d6cb75982", user_id: 1),
Item.new(username: "Ready to Die", img_src: "https://images.squarespace-cdn.com/content/v1/5a4583f1a8b2b077ad949ef7/1525381466965-MIVUQDBUIR9FYM4C064B/ke17ZwdGBToddI8pDm48kN2JNBQlc3ny14fhvOG8oCNZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpwTspcQd9KXmUb8yRrQ-x-BahojTVPtyAFvPs3cOba9fw6ffF2n4QhCXOI4ThwQ12w/1994.jpg", user_id: 2),
Item.new(username: "Young Thug", img_src: "https://static.vibe.com/files/2016/08/Thugger--compressed.jpg", user_id: 3)
]

