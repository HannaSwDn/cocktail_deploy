User.destroy_all
Item.destroy_all

admin = User.create(email: 'admin@mail.com', password: 'password', password_confirmation: 'password', role: 'admin')
admin.save

user = User.create(email: 'user@mail.com', password: 'password', password_confirmation: 'password', role: 'user')
user.save

5.times {
    item = Item.create(title: 'Canapés', category: 'Appetizer', description: 'This is a very good item', price: 8)
    item.save
}

5.times {
    item = Item.create(title: 'Salmon', category: 'Main', description: 'This is a very good item', price: 12)
    item.save
}

5.times {
    item = Item.create(title: 'Panacotta', category: 'Dessert', description: 'This is a very good item', price: 7)
    item.save
}

5.times {
    item = Item.create(title: 'Red Wine', category: 'Drink', description: 'This is a very good item', price: 14)
    item.save
}
