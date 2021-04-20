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

  # context 'truck stock' do

  #   it 'has' do

  #     expect().to eq()
  #   end
  # end
end