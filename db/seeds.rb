## Users
puts 'Creating users...'

joe = User.create!(name: 'Youssef Sobhy', age: 23, gender: 'male')
omar = User.create!(name: 'Omar Mekky', age: 30, gender: 'male')
salma = User.create!(name: 'Salma Osama', age: 27, gender: 'female')
hoda = User.create!(name: 'Hoda Hamad', age: 24, gender: 'female')
bahia = User.create!(name: 'Bahia', age: 27, gender: 'female')
eman = User.create!(name: 'Eman', age: 29, gender: 'female')

## Todos
puts 'Creating todos...'

joe.todos.create!(content: 'Todo one')
joe.todos.create!(content: 'Todo two')
omar.todos.create!(content: 'Todo one')
omar.todos.create!(content: 'Todo two')
salma.todos.create!(content: 'Todo one')
salma.todos.create!(content: 'Todo two')
hoda.todos.create!(content: 'Todo one')
hoda.todos.create!(content: 'Todo two')
bahia.todos.create!(content: 'Todo one')
bahia.todos.create!(content: 'Todo two')
eman.todos.create!(content: 'Todo one')
eman.todos.create!(content: 'Todo two')
