require 'rails_helper'

RSpec.describe Product, type: :model do
    it "saves product to database" do
      category = Category.create(name: "Animals")
      product = Product.create(name: "panda", price: 1000000, quantity: 2, category: category)
      expect(product).to be_present
    end

  it "is not valid without a name"
  it "is not valid without a price"
  it "is not valid without a quantity"
  it "is not valid without a category"
end