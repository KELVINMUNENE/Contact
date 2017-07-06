require('rspec')
  require('contacts')

  describe('Contacts') do
    before() do
      Contact.clear()
    end

  describe("#description") do
    it("lets you give contacts") do
      test_contact = Contact.new("Lydia Wairimu - 0701553924")
      expect(test_contact.description()).to(eq("Lydia Wairimu -0701553924"))
    end
  end



      describe("#first_name") do
        it("returns the first name of the person") do
          test_contact = Contact.new("Chuck", "Norris")
          expect(test_contact.first_name()).to(eq("Chuck"))
        end
      end


          describe("#last_name") do
            it("returns the last name of the person") do
              test_contact = Contact.new("Carmello", "Antony")
              expect(test_contact.last_name()).to(eq("Antony"))
            end
          end



              describe("#email") do
                it("returns the email of the person") do
                  test_contact = Contact.new("uhurukenyatta@gmail.com")
                  expect(test_contact.email()).to(eq("uhurukenyatta@gmail.com"))
                end
              end

      



end
