require 'rails_helper'

describe Product do
    
    let(:product) { Product.create!(name: "test bike", description: "awesome bike", color: "red", price: "1290") }
   # user = FactoryGirl.create(:user)
    let(:user) { User.create!(email: "test@rspectest.com",first_name: "User", last_name: "Rspec",admin: false, password: "Password123@") }
    
    before do
      product.comments.create!(rating: 1, user: user, body: "Awful bike!")
      product.comments.create!(rating: 3, user: user, body: "Ok bike!")
      product.comments.create!(rating: 5, user: user, body: "Great bike!")
    end

    it "returns the average rating of all comments" do
      expect(product.average_rating).to eq 3
    end

    it "is not valid without a name" do
      expect(Product.new(description: "Cool bike")).not_to be_valid
    end

end
