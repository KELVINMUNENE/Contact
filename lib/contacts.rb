class Contact
  @@all_contacts = []

define_method(:initialize) do |first_name, last_name, phone_number, email, job_title, company|
  @first_name = first_name
  @last_name = last_name
  @phone_number = phone_number
  @email = email
  @job_title = job_title
  @company = company
end

define_method(:first_name) do
  @first_name
end

define_method(:last_name) do
  @last_name
end

define_method(:phone_number) do
  @phone_number
end
define_method(:email) do
  @email
end
define_method(:job_title) do
  @job_title
end
define_method(:company) do
  @company
end

define_singleton_method(:all) do
  @@contacts
end

define_method(:save) do
  @@contacts.push(self)
end

define_singleton_method(:clear) do
  @@contacts = []
end
end
