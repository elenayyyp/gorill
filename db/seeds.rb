# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Driver.create(first_name: "sam", last_name: "duffy")
Driver.create(first_name: "juan", last_name: "juanson")

Shuttle.create(shuttle_num: "666")
Shuttle.create(shuttle_num: "200")

Tracking.create(driver_id: 1, shuttle_id: 1, lat: "60.957664", lng: "-149.1562337", toSeward: true)
Tracking.create(driver_id: 2, shuttle_id: 2, lat: "60.9668622", lng: "-149.1060145", toSeward: true)
