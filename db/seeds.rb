# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: "valentin@wcs.fr", password: "admin1", pseudo:"Admin", admin:"true")


races = Race.create(
  [ { name: "Alvin", image: "Alvin.png"},
    { name: "Chester", image: "Chester.png"},
    { name: "Elize", image: "Elize.png"},
    { name: "Ember", image: "Ember.png"},
    { name: "Etha", image: "Etha.png"},
    { name: "Ez", image: "Ez.png"},
    { name: "Flame", image: "Flame.png"},
    { name: "Gaius", image: "Gaius.png"},
    { name: "Gank", image: "Gank.png"},
    { name: "Jakui", image: "Jakui.png"},
    { name: "Jude", image: "Jude.png"},
    { name: "Lailah", image: "Lailah.png"},
    { name: "Mar", image: "Mar.png"},
    { name: "Mark", image: "Mark.png"},
    { name: "Mikleo", image: "Mikleo.png"},
    { name: "Preza", image: "Preza.png"},
    { name: "Raven", image: "Raven.png"},
    { name: "Rose", image: "Rose.png"},
    { name: "Tox", image: "Tox.png"},
    { name: "Yori", image: "Yori.png"},
    { name: "Yumi", image: "Yumi.png"},
    { name: "Zere", image: "Zere.png"},
  ]
)

# classes = Classe.create(
#   [ { name: "", image: ""}
#
#   ]
# )
