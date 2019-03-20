class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand
  
  BRANDS = []
  
  def initialize(new_brand)
    @brand = new_brand
    BRANDS << new_brand if !(BRANDS.detect?(|brand| brand == new_brand))
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end