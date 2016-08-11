# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cocktail.destroy_all

cocktails_attributes = [
  {
    name: "Mojito",
    image_url: "https://hd.unsplash.com/photo-1455621481073-d5bc1c40e3cb"
    },
  {
    name: "Bloody Mary",
    image_url: "https://jeremybutterfield.files.wordpress.com/2015/11/bloody-mary_basic.jpg"
    },
  {
    name: "Jagerbomb",
    image_url: "http://www.scoutnetworkblog.com/wp-content/uploads/2014/04/J%C3%A4ger_Bomb_New-copy.jpg"
    },
  {
    name: "Blue Lagoon",
    image_url: "https://hd.unsplash.com/photo-1461823385004-d7660947a7c0"
    },
  {
    name: "Vodka Framboise",
    image_url: "https://hd.unsplash.com/photo-1438522014717-d7ce32b9bab9"
    }
]


cocktails_attributes.each { |params| Cocktail.create!(params) }

Ingredient.destroy_all

ingredients_attributes = [
{
  name: "lemon"
  },
{
  name: "ice"
  },
{
  name: "mint leaves"
}
  ]


ingredients_attributes.each { |params| Ingredient.create!(params) }

