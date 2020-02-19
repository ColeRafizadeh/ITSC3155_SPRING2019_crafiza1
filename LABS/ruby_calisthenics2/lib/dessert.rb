class Dessert
  
  attr_accessor :name
  attr_accessor :calories
  
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    true if @calories < 200
  end
  def delicious?
    true
  end
end

class JellyBean < Dessert
  # add code for setters and getters
  def initialize(flavor)
    # your code here
  end
end
