class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    @items.map {|item| item[:name]}.sort
  end

  def cheap
    @items.select {|item| item if item[:price] < 30}
  end

  def out_of_stock
    @items.select {|item| item if item[:quantity_by_size].none?}
  end

  def stock_for_item(name)
    arr_quant = @items.map {|item| item[:quantity_by_size] if item[:name] == name}
    arr_quant.select {|quant| quant != nil}.first
  end

  def total_stock
    @items.sum {|item| item[:quantity_by_size].sum {|_, v| v}}
  end

  private
  attr_reader :items
end