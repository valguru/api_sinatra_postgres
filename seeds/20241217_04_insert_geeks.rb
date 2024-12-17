Sequel.seed(:development, :test) do
  def run
    puts 'Inserting data into geeks model'

    DB[:geeks].insert(name: 'Mike', stack: 'Sinatra React', resume: true)
    DB[:geeks].insert(name: 'Alex', stack: 'Ruby React', resume: true)
    DB[:geeks].insert(name: 'Martha', stack: 'Rails', resume: false)
    DB[:geeks].insert(name: 'Juri', stack: 'Java', resume: true)
    DB[:geeks].insert(name: 'Andrew', stack: 'PHP', resume: false)
    DB[:geeks].insert(name: 'Nina', stack: 'Node', resume: true)
    DB[:geeks].insert(name: 'Bob', stack: 'Front end', resume: true)
    DB[:geeks].insert(name: 'Kate', stack: 'PHP', resume: false)
    DB[:geeks].insert(name: 'Boris', stack: 'Full stack', resume: true)

    puts 'Data inserted into geeks model'
  end
end