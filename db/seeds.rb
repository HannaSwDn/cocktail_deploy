User.destroy_all
Item.destroy_all

admin = User.create(email: 'admin@mail.com', password: 'password', password_confirmation: 'password', role: 'admin')
admin.save

user = User.create(email: 'user@mail.com', password: 'password', password_confirmation: 'password', role: 'user')
user.save

item = Item.create(title: 'Canapés', category: 'Appetizer', price: 12)
item.save
