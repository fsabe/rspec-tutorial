# encoding: utf-8

describe Cart do
  let(:cart) { Cart.new }
  let(:product) { double("product") }

  describe "#size" do
    it "return 0 for an empty cart" do
      expect(cart.size).to eq 0
    end

    it "returns 1 after adding an item" do
      cart.add product
      expect(cart.size).to eq 1
    end
  end

  describe "#add" do
    it "is initially empty" do
      expect(cart.items).to be_empty
    end

    it "contains the added product" do
      cart.add product
      expect(cart.items).to include product
    end
  end

  describe "#remove" do
    before do
      cart.add product
    end

    it "does not contain the removed product" do
      cart.remove product
      expect(cart.items).to_not include product
    end
  end

  describe "#empty?" do
    it "is initially empty" do
      expect(cart).to be_empty
    end
  end
end
