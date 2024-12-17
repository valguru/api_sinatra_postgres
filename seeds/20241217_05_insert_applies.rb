Sequel.seed(:development, :test) do
  def run
    puts 'Inserting data into applies model'

    DB[:applies].insert(job_id: 1, geek_id: 1, read: true, invited: true)
    DB[:applies].insert(job_id: 1, geek_id: 2, read: false, invited: false)
    DB[:applies].insert(job_id: 5, geek_id: 5, read: true, invited: false)
    DB[:applies].insert(job_id: 6, geek_id: 8, read: false, invited: false)

    puts 'Data inserted into applies model'
  end
end