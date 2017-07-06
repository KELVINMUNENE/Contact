require('sinatra')
  require('sinatra/reloader')
  also_reload('lib/**/*.rb')
  require('./lib/contacts')


get('/') do
  erb(:index)
end

get('/contacts/new') do
  erb(:contact_form)
end


get('/persons/:id/contacts/new') do
    @person = person.find(params.fetch('id').to_i())
    erb(:person_contacts_form)
end


post('/contacts') do
    first_name = params.fetch('first_name')
    last_name = params.fetch('last_name')
    email = params.fetch('email')
    company = params.fetch('company')
    job_title = params.fetch('job_title')
    phone_number = params.fetch('phone_number')
    @contact = Contact.new(first_name,last_name, email, company, job_title, phone_number)
    @contact.save()
    @person = Persons.find(params.fetch('person_id').to_i())
    @person.add_contact(@contact)
    erb(:added)
  end
