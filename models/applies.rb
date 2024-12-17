require './lib/task/db'

class Apply < Sequel::Model
  many_to_one :geek
  many_to_one :job

   def to_api
      {
        id: id,
        read: read,
        invited: invited,
        job_id: job_id,
        geek_id: geek_id
      }
    end
end