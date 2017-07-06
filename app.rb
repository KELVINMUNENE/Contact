require('sinatra')
  require('sinatra/reloader')
  also_reload('lib/**/*.rb')
  require('./lib/contacts')


get('/') do
  erb(:index)
end

get('/contact') do
  erb(:contact_form)
end
