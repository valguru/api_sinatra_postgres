require 'sinatra'
require 'sinatra/namespace'
require 'sinatra/base'

module Routes
  module Jobs
    def self.registered(app)
      app.namespace '/api/v1' do
        # Все вакансии
        get '/jobs' do
          jobs = Job.all
          collection_to_api(jobs)
        end

        # Вакансия по id
        get '/jobs/:id' do
          job = Job.where(id: params[:id]).first
          if job
            job.values.to_json
          else
            status 404
            { error: 'Job not found' }.to_json
          end
        end
      end
    end
  end
end





# namespace '/api/v1' do
#   get '/jobs' do
#       logger.info "Logger In get /jobs"
#       jobs = Job.all
#       [:place, :name].each do |filter|
#         jobs = jobs.send(filter, params[filter]) if params[filter]
#       end
#       collection_to_api(jobs)
#   end
#
#   get '/jobs/:id' do
#      job = Job.where(id: params[:id]).first  # Используем where для поиска работы по id
#       if job
#         job.values.to_json  # Если работа найдена, возвращаем результат в формате JSON
#       else
#         status 404  # Если работа не найдена, возвращаем ошибку 404
#       end
#   end
# end

