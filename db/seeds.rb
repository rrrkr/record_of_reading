# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:"hoge",email:"hoge@example.com",password:"password")

#for i in 1..6 do
#  Book.create!(
#    user_id:1,
#    title:"呪術廻戦#{i}",
#    categoly:"comic",
#    pages:198,
#    favorite:false,
#    src: File.open("#{Rails.root}/public/images/jujutsu#{i}.jpeg")
#  )
#end
