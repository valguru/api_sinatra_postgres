Sequel.seed(:development, :test) do
  def run
    puts 'Inserting data into companies model'

    DB[:companies].insert(name:'MoGo', location: 'New York')
    DB[:companies].insert(name: 'Wirkkle', location: 'London')
    DB[:companies].insert(name:'Artesis', location: 'Saint-Petersburg')
    DB[:companies].insert(name:'BuildEmpire', location: 'London')

    puts 'Data inserted into companies model'
  end
end