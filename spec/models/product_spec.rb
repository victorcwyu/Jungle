require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
  # validation tests/examples here
    it "saves product to database" do
      category = Category.create(name: "Animals")
      product = Product.create(name: "Panda", price: 1000000, quantity: 2, category: category)
      expect(product).to be_present
    end

    it "does not save if name is missing" do
      category = Category.create(name: "Animals")
      product = Product.create(name: nil, price: 1000000, quantity: 2, category: category)
      expect(product.errors.full_messages).to include "Name can't be blank"
    end

    it "does not save if price is missing" do
      category = Category.create(name: "Animals")
      product = Product.create(name:"Panda", price: nil, quantity: 2, category: category)
      expect(product.errors.full_messages).to include "Price can't be blank"
    end

    it "does not save if quantity is missing" do
      category = Category.create(name: "Animals")
      product = Product.create(name: "Panda", price: 1000000, quantity: nil, category: category)
      expect(product.errors.full_messages).to include "Quantity can't be blank"
    end

    it "does not save if category is missing" do
      category = Category.create(name: "Animals")
      product = Product.create(name: "Panda", price: 1000000, quantity: 2, category: nil)
      expect(product.errors.full_messages).to include "Category can't be blank"
    end
  end
end