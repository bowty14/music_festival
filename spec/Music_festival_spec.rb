require ('pry')
require ('rspec')
require ('Music_festival')

describe('#Tent') do

  describe('#save') do
    it('Will save a new tent that is created') do
      tent1 = Tent.new("Punk", nil)
      tent1.save()
      tent2 = Tent.new("EDM", nil)
      tent2.save()
      expect(Tent.all).to(eq([tent1, tent2]))
    end
  end
end