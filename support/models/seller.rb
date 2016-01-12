# encoding: utf-8

class Seller
  attr_accessor :name, :email, :products

  def initialize
    @products = []
  end
end
