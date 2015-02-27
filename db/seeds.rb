# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ToDo.create(text: "Do your laundry", row_order: 1, due_date: "2015-02-28".to_date )
ToDo.create(text: "Brush your teeth", row_order: 2, due_date: "2015-02-28".to_date)
ToDo.create(text: "Grocery shopping", row_order: 3, due_date: "2015-02-28".to_date )
ToDo.create(text: "Mow the grass", row_order: 4, due_date: "2015-02-28".to_date )
ToDo.create(text: "Eat all the kittens", row_order: 5, due_date: "2015-02-28".to_date )
