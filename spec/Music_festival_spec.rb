require ('pry')
require ('rspec')
require ('Music_festival')

describe('#Tent') do

  before(:each) do
    Tent.clear()
  end

  describe('#save') do
    it('Will save a new tent that is created') do
      tent1 = Tent.new("Punk", nil)
      tent1.save()
      tent2 = Tent.new("EDM", nil)
      tent2.save()
      expect(Tent.all).to(eq([tent1, tent2]))
    end
  end

  describe('.all') do
    it('returns an empty array when there are no tents') do
      expect(Tent.all).to(eq([]))
    end
  end

  describe('.clear') do
    it("clears all tents") do
      tent1 = Tent.new("Metal", nil)
      tent1.save()
      tent2 = Tent.new("Folk", nil)
      tent2.save()
      Tent.clear()
      expect(Tent.all).to(eq([]))
    end
  end

  describe('.find') do
    it("finds a tent by id." ) do
      tent1 = Tent.new("Metal", nil)
      tent1.save()
      tent2 = Tent.new("Folk", nil)
      tent2.save()
      expect(Tent.find(tent1.id)).to(eq(tent1))
    end
  end
end