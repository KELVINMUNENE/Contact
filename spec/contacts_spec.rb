require('rspec')
  require('contacts')


describe(Contacts) do
  describe("#description") do
    it("lets you give contacts") do
      test_contact = Contact.new("Lydia Wairimu - 0701553924")
      expect(test_contact.description()).to(eq("Lydia Wairimu -0701553924"))
    end
  end
end




  
