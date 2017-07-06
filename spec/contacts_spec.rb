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


            describe("#phone_number") do
              it("returns the phone number of the person") do
                test_contact = Contact.new("0703897049")
                expect(test_contact.phone_number()).to(eq("0703897049"))
              end
            end


            describe("#company") do
              it("returns the company the person is working for/owns") do
                test_contact = Company.new("Facebook")
                expect(test_contact.company()).to(eq("Facebook"))
              end
            end



            describe("#job_title") do
              it("returns the job title of the person in the company") do
                test_contact = company.new("CEO")
                expect(test_contact.make()).to(eq("CEO"))
              end
            end
          end
