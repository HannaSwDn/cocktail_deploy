User.destroy_all
Item.destroy_all

admin = User.create(email: 'admin@mail.com', password: 'password', password_confirmation: 'password', role: 'admin')
admin.save

user = User.create(email: 'user@mail.com', password: 'password', password_confirmation: 'password', role: 'user')
user.save

Item.create(
    title: 'Pickles',
    description: '3 Crispy pickles',
    price: '6',
    category: 'Food'
)

Item.create(
        title: 'White Russian',
        description: 'Vodka, Coffee Liquor, Cream',
        price: '13',
        category: 'Cocktail'
    )

Item.create(
        title: 'Mojito',
        description: 'White rum, Mint leaves, Sugar Syrup, Lime juice, Mint sprigs',
        price: '12',
        category: 'Cocktail'
    )

Item.create(
        title: 'Martini',
        description: 'Gin, Dry Vermouth, Lemon twist',
        price: '12',
        category: 'Cocktail'
    )

Item.create(
        title: 'Martini',
        description: 'Gin, Dry Vermouth, Lemon twist',
        price: '12',
        category: 'Cocktail'
    )

Item.create(
        title: 'Old Fashioned',
        description: 'Bourbon, Angostura Bitters, Orange Bitters, Sugar, Orange peel',
        price: '12',
        category: 'Cocktail'
    )

Item.create(
        title: 'Long island iced tea',
        description: 'Gin, Vodka, Tequila, White rum, Triple sec, Lemon juice, Gomme syrup, Cola',
        price: '12',
        category: 'Cocktail'
    )

Item.create(
        title: 'Espresso Martini',
        description: 'Vanilla vodka, Kahlúa, Double espresso, Sugar syrup, Coffee beans',
        price: '12',
        category: 'Cocktail'
    )

Item.create(
        title: 'Screwdriver',
        description: 'Vodka, Orange juice, Lime wedge',
        price: '12',
        category: 'Cocktail'
    )

Item.create(
        title: 'Blue Lagoon',
        description: 'Curacao, Vodka, Lemonade, Ice, Maraschino cherry',
        price: '12',
        category: 'Cocktail'
    )
