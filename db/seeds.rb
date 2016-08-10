# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(title: "genel",desc:"genel descr",color:"red")
Category.create(title: "ozel",descr:"ozel descr",color:"blue")
Idea.create(title:"mega super fikir",description:"über fikir",planned_to:"date.tomorrow")
Idea.create(title:"fikr fikir fikir",description:"zupa fikir",planned_to:"date.tomorrow")