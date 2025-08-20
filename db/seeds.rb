farm1 = Farm.create!(name: "Hamburg Hills")
farm2 = Farm.create!(name: "Hohfeld's Farm")

user1 = User.create!(name: "Beverly", farm: farm1)
user2 = User.create!(name: "Alexis", farm: farm1)
user3 = User.create!(name: "Sabrina", farm: farm2)

loc1 = Location.create!(name: "Group 1", farm: farm1)
loc2 = Location.create!(name: "Group 2", farm: farm1)
loc3 = Location.create!(name: "Group 3", farm: farm1)
loc4 = Location.create!(name: "Group 4", farm: farm1)

cow1 = Cow.create!(name: "Jams", location: loc4)
cow2 = Cow.create!(name: "RH", location: loc3)
cow3 = Cow.create!(name: "Daisy", location: loc1)

list1 = List.create!(name: "Hoof Trimmer", user: user2)
list2 = List.create!(name: "Move to Prefresh", user1)
list3 = List.create!(name: "Move to OB 3", user3)

CowList.create!(cow: cow1, list: list1)
CowList.create!(cow: cow2, list: list1)
CowList.create!(cow: cow3, list: list2)