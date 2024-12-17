require 'sinatra'
require 'sinatra/namespace'
require 'sinatra/base'

module Routes
  module Geeks
    def self.registered(app)
      app.namespace '/api/v1' do
        get '/geeks' do
          geeks = Geek.all
          collection_to_api(geeks)
        end
      end
    end
  end
end















# namespace '/api/v1' do
#   get '/geeks' do
#     geeks = Geek.all
#     collection_to_api(geeks)
#   end
# end