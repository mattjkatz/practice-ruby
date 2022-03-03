class PetStore
  attr_reader :name, :color, :species, :price, :adoption_status
  attr_writer :name

  def initialize(input)
    @name = input[:name]
    @color = input[:color]
    @species = input[:species]
    @price = input[:price]
    @adopted = input[:adoption_status]
  end

  # these methods are reader methods

  def pet_info
    if @color.split("")[0] == "a" || @color.split("")[0] == "o" || @color.split("")[0] == "u" || @color.split("")[0] == "i" || @color.split("")[0] == "e"
      color_plus_a = "an #{@color}"
    else
      color_plus_a = "a #{@color}"
    end
    if @adopted == false
      return "#{@name} is #{color_plus_a} #{@species} who is currently up for adoption for $#{@price}."
    elsif @adopted == true
      return "#{@name} is a #{@color} #{@species} who someone has adopted."
    end
  end

  # these methohds are writer methods

  def change_adoption_status
    if @adopted == true
      @adopted = false
    elsif @adopted == false
      @adopted = true
    end
  end
end

animal1 = PetStore.new({ name: "Zoom", color: "orange", species: "bearded dragon", price: 300, adoption_status: false })

puts animal1.pet_info
# animal1.change_adoption_status
animal1.name = ("Bob")
animal1.change_adoption_status
puts animal1.pet_info
