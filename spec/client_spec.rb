require("spec_helper")

describe(Client) do

  describe("#==") do
    it("is the same client if they have the same name") do
      client1 = Client.new({:name => "chuck norris", :stylist_id => 1, })
      client2 = Client.new({:name => "chuck norris", :stylist_id => 1, })
      expect(client1).to(eq(client2))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Client.all()).to(eq([]))
    end
  end

  describe("#name") do
    it("lets you read the client name per stylist") do
      test_client = Client.new({:name => "chris walken", :stylist_id => 1, })
      expect(test_client.stylist_id()).to(eq(1))
    end
  end

  describe("#stylist_id") do
    it("lets you read the stylist id") do
      test_client = Client.new({:name => "Babs", :stylist_id => 1, })
      expect(test_client.stylist_id()).to(eq(1))
    end
  end

  describe("#save") do
    it("adds a client to the array of the saved clients") do
      client1 = Client.new({:name => "Marge", :stylist_id => 1, })
      client1.save()
      expect(Client.all()).to(eq([client1]))
    end
  end
end
