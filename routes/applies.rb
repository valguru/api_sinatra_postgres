require 'sinatra'
require 'sinatra/namespace'
require 'sinatra/base'

module Routes
  module Applies
    def self.registered(app)
      app.namespace '/api/v1' do
        get '/applies' do
          applies = Apply.all
          collection_to_api(applies)
        end
      end
    end
  end
end















# namespace '/api/v1' do
#   get '/applies' do
#     applies = Apply.all
#     collection_to_api(applies)
#   end
# end