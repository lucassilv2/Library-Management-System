# app/models/customer.rb
class Customer < ApplicationRecord
  has_many :loans
end
