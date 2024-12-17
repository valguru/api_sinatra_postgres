require './lib/task/db'

class Company < Sequel::Model
    one_to_many  :jobs

    def to_api
            {
              id: id,
              name: name,
              location: location
            }
        end
end

