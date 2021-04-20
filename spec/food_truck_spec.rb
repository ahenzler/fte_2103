require './lib/item'
require './lib/food_truck'

RSpec.describe FoodTruck do
  context 'exists' do
    food_truck = FoodTruck.new("Rocky Mountain Pies")

    it 'is a food truck' do
      expect(food_truck).to be_instance_of(FoodTruck)
    end

    it 'has attributes' do
      expect(food_truck.name).to eq("Rocky Mountain Pies")
      expect(food_truck.inventory).to eq({})
    end
  end

  context 'truck stock' do
    food_truck = FoodTruck.new("Rocky Mountain Pies")
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
    item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})

    it 'can check stock' do
      expect(food_truck.check_stock(item1)).to eq(0)
    end

    it 'can add items' do
      food_truck.stock(item1, 30)
      expect(food_truck.inventory).to eq({item1 => 30})
    end
  end
end