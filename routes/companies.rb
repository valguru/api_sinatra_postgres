require 'sinatra'
require 'sinatra/namespace'
require 'sinatra/base'

module Routes
  module Companies
    def self.registered(app)
      app.namespace '/api/v1' do
        get '/companies' do
          companies = Company.all
          collection_to_api(companies)
        end
      end
    end
  end
end














# namespace '/api/v1' do
#   get '/companies' do
#     companies = Company.all
#     collection_to_api(companies)
#   end
# end