Sequel.seed(:development, :test) do
  def run
    puts 'Inserting data into jobs model'

    DB[:jobs].insert(name: 'Sinatra React', place: 'Remote', company_id: 1)
    DB[:jobs].insert(name: 'Ruby React', place: 'Contract', company_id: 2)
    DB[:jobs].insert(name: 'React', place: 'Remote', company_id: 3)
    DB[:jobs].insert(name: 'Node React', place: 'Permanent', company_id: 1)
    DB[:jobs].insert(name: 'Ruby on Rails', place: 'Remote', company_id: 4)
    DB[:jobs].insert(name: 'Node', place: 'Permanent', company_id: 4)
    DB[:jobs].insert(name: 'Javascript CSS HTML', place: 'Permanent', company_id: 4)

    puts 'Data inserted into jobs model'
  end
end
