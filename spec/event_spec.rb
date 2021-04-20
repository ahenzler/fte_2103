require './lib/item'
require './lib/food_truck'
require './lib.event'

RSpec.describe Event do
  context 'exists' do
    event = Event.new("South Pearl Street Farmers Market")

    it 'is a event' do
      expect(event).to be_instance_of(Event)
    end

    it 'has attributes' do
      expect(event.name).to eq("South Pearl Street Farmers Market")
      expect(event.food_trucks).to eq([])
    end
  end
end