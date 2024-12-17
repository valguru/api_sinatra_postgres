require './lib/task/db'

class Job < Sequel::Model
  many_to_one :company

  def to_api
      {
        id: id,
        name: name,
        place: place,
        company_id: company_id
      }
    end
end
