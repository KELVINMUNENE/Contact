class Person
    @@persons = []

    define_method(:initialize) do |first_name, last_name, phone_number, email, job_title, company|
      @first_name = first_name
      @last_name = last_name
      @phone_number = phone_number
      @email = email
      @job_title = job_title
      @company = company
    end
    
    define_method(:name) do
      @name
    end

    define_method(:id) do
      @id
    end

    define_method(:cars) do
      @cars
    end

    define_method(:add_vehicle) do |vehicle|
        @cars.push(vehicle)
      end

    define_singleton_method(:all) do
      @@dealerships
    end

    define_method(:save) do
      @@dealerships.push(self)
    end

    define_singleton_method(:clear) do
      @@dealerships = []
    end

    define_singleton_method(:find) do |id|
      found_dealership = nil
      @@dealerships.each() do |dealership|
        if dealership.id().eql?(id)
          found_dealership = dealership
        end
      end
      found_dealership
    end
end
