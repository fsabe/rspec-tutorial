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
  end

  describe Seller do
    before :context do
      @seller = build(:seller)
    end

    it "has a name" do
      expect(@seller.name).to eq "Alceu"
    end

    it "has an email" do
      expect(@seller.email).to eq "alceu.dispor@email.com"
    end
  end
end
