require("spec_helper")

describe(Stylist) do

  describe(".all") do
    it("starts off with no stylists") do
      expect(Stylist.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("sets its ID when you save it") do
      stylist = Stylist.new({:name => "Roxi Sun", :id => nil})
      stylist.save()
      expect(stylist.id()).to(be_an_instance_of(Fixnum))
    end
  end

  describe("#stylist name") do
    it("tells you stylist name") do
      stylist = Stylist.new({:name => "Bobbi Star", :id => nil})
      expect(stylist.name()).to(eq("Bobbi Star"))
    end
  end

  describe("#save") do
    it("lets you save the stylist to the database") do
      stylist = Stylist.new({:name => "Franki Moon", :id => nil})
      stylist.save()
      expect(Stylist.all()).to(eq([stylist]))
    end
  end

  describe("#==") do
    it("is the identical stylist if the name matches") do
      stylist1 = Stylist.new({:name => "Franki Moon", :id => nil})
      stylist2 = Stylist.new({:name => "Franki Moon", :id => nil})
      expect(stylist1).to(eq(stylist2))
    end
  end

  describe(".find") do
    it("returns a stylist by their ID number") do
      test_stylist = Stylist.new({:name => "Janey", :id => nil})
      test_stylist.save()
      test_stylist2 = Stylist.new({:name => "Jonny", :id => nil})
      test_stylist2.save()
      expect(Stylist.find(test_stylist2.id())).to(eq(test_stylist2))
    end
  end
end
