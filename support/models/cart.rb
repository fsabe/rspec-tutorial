# encoding: utf-8

class Cart
  attr_accessor :items

  def initialize
    @items = []
  end

  def size
    @items.size
  end

  def add product
    @items << product
  end

  def remove product
    @items.delete product
  end

  def empty?
    @items.empty?
  end
end
