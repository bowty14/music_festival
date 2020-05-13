require ('pry')

class Tent
  attr_reader :stage, :id
  @@tents = {}
  @@total_rows = 0
  
  def initialize(stage, id)
    @stage = stage 
    # stage = genre
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

  def self.clear
    @@tents = {}
    @@total_rows = 0
  end

  def self.find(id)
    @@tents[id]
  end

  def update(stage)
    @stage = stage
  end

  def delete
    @@tents.delete(self.id)
  end

  def self.search(stage)
    array = @@tents.values.select {|tent| tent.stage == stage}
    return array
  end
end