# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

me = Customer.create(name: 'Paul Barry', email: 'mail@paulbarry.com')
test = Customer.create(name: 'John Doe', email: 'test@example.com')
Customer.create(name: 'Nowhere Man', email: 'man@nowhere.com')

hat = Product.create(name: 'Hat', price: 2.99)
hoodie = Product.create(name: 'Hoodie', price: 3.75)
iphonecase = Product.create(name: 'iPhone Case', price: 3.99)
sticker = Product.create(name: 'Sticker', price: 2.99)
shirt = Product.create(name: 'Shirt', price: 3.75)
journal = Product.create(name: 'Journal', price: 3.99)

order = Order.create(customer: me, placed_at: '2013-09-27')
LineItem.create(order: order, quantity: 1, product: shirt)
LineItem.create(order: order, quantity: 1, product: hoodie)

order = Order.create(customer: me, placed_at: Time.current)
LineItem.create(order: order, quantity: 1, product: sticker)

order = Order.create(customer: test, placed_at: Time.current)
LineItem.create(order: order, quantity: 1, product: journal)
LineItem.create(order: order, quantity: 1, product: iphonecase)