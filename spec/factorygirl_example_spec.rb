# encoding: utf-8

describe "factorygirl" do
  describe Product do
    before :context do
      @product = build(:product)
    end

    it "has a title" do
      expect(@product.title).to eq "Mochila"
    end

    it "has a price" do
      expect(@product.price).to eq 20.10
    end

    it "has a seller" do
      expect(@product.seller).to_not be_nil
    end

    it "is owned by seller" do
      seller = @product.seller
      expect(seller.products).to include @product
    end
  end

  describe Seller do
    before :context do
      @seller = build(:seller, :with_product)
    end

    it "has a name" do
      expect(@seller.name).to eq "Alceu"
    end

    it "has an email" do
      expect(@seller.email).to eq "alceu.dispor@email.com"
    end

    it "has a product" do
      expect(@seller.products.size).to eq 1
    end
  end
end
