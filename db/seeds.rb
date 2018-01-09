## Users
puts 'Creating users...'

joe = User.create!(email: 'joe@gmail.com', name: 'Youssef Sobhy', password: '12345678', age: 23, gender: 'male')
omar = User.create!(email: 'omar@gmail.com', name: 'Omar Mekky', password: '12345678', age: 30, gender: 'male')
salma = User.create!(email: 'salma@gmail.com', name: 'Salma Osama', password: '12345678', age: 27, gender: 'female')
hoda = User.create!(email: 'hoda@gmail.com', name: 'Hoda Hamad', password: '12345678', age: 24, gender: 'female')
bahia = User.create!(email: 'bahia@gmail.com', name: 'Bahia', password: '12345678', age: 27, gender: 'female')
eman = User.create!(email: 'eman@gmail.com', name: 'Eman', password: '12345678', age: 29, gender: 'female')

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
