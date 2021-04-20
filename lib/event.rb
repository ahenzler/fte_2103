class Event
  attr_reader :name,
              :food_trucks

  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(truck)
    @food_trucks << truck
  end

  def food_truck_names
    @food_trucks.map do |truck|
      truck.name
    end
  end

  def food_trucks_that_sell(item)
    @food_trucks.find_all do |truck|
      truck.inventory.include?(item)
    end
  end

  def total_inventory
    inventory = Hash.new{|h,k| h[k] = {}}
    @food_trucks.each do |truck|
      truck.inventory.each do |item, amount|
        inventory[item] = {quantity: amount, food_trucks: food_trucks_that_sell(item)}
      end
    end
    inventory
  end

  def overstocked_items
    @food_trucks.each do |truck|
      truck.inventory.each do |items|
        items.each do |item|
          if total_inventory[item][:quantity] > 50 && total_inventory[item][:food_trucks].length > 1
            return [item]
          end
        end
      end
    end
  end
end