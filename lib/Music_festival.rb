require ('pry')

class Tent
  attr_reader :stage, :id
  @@tents = {}
  @@total_rows = 0
  
  def initialize(stage, id)
    @stage = stage
    @id = id || @@total_rows += 1
  end
  
  def self.all
    @@tents.values()
  end  

  def save
    @@tents[self.id] = Tent.new(self.stage, self.id)  
  end

  def ==(tent_to_compare)
    self.stage() == tent_to_compare.stage()
  end

end