# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Author.create(name: "Jane Austen", birth_date: Date.new(1775, 12, 16), country_of_origin: "United Kingdom")
Author.create(name: "Mark Twain", birth_date: Date.new(1835, 11, 30), country_of_origin: "United States")
Author.create(name: "Gabriel Garcia Marquez", birth_date: Date.new(1927, 3, 6), country_of_origin: "Colombia")
Author.create(name: "Haruki Murakami", birth_date: Date.new(1949, 1, 12), country_of_origin: "Japan")
Author.create(name: "J.K. Rowling", birth_date: Date.new(1965, 7, 31), country_of_origin: "United Kingdom")

Book.create(title: "Pride and Prejudice", publisher: "Penguin Classics", num_copies: 15, ISBN: "9780141439518")
Book.create(title: "The Adventures of Huckleberry Finn", publisher: "Harper & Brothers", num_copies: 8, ISBN: "9781593080142")
Book.create(title: "One Hundred Years of Solitude", publisher: "Harper & Row", num_copies: 12, ISBN: "9780060883287")
Book.create(title: "Norwegian Wood", publisher: "Vintage International", num_copies: 10, ISBN: "9780375704024")
Book.create(title: "Harry Potter and the Sorcerer's Stone", publisher: "Scholastic", num_copies: 20, ISBN: "9780590353427")

Customer.create(name: "John Smith", address: "123 Main St, Anytown", phone_number: "555-1234")
Customer.create(name: "Alice Johnson", address: "456 Oak Ave, Sometown", phone_number: "555-5678")
Customer.create(name: "Robert Lee", address: "789 Elm Rd, Othertown", phone_number: "555-9876")
Customer.create(name: "Emily Brown", address: "321 Maple Dr, Hometown", phone_number: "555-4567")
Customer.create(name: "Michael Wang", address: "567 Pine Blvd, Cityville", phone_number: "555-2345")

Loan.create(loan_date: Date.new(2023, 7, 1), return_date: Date.new(2023, 7, 15))
Loan.create(loan_date: Date.new(2023, 7, 5), return_date: Date.new(2023, 7, 20))
Loan.create(loan_date: Date.new(2023, 7, 10), return_date: Date.new(2023, 7, 25))
Loan.create(loan_date: Date.new(2023, 7, 12), return_date: Date.new(2023, 7, 27))
Loan.create(loan_date: Date.new(2023, 7, 18), return_date: Date.new(2023, 8, 1))
