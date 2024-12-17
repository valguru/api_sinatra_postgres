require 'sinatra/base'
require 'sinatra/namespace'

module MyAppModule
  class App < Sinatra::Base
    register Sinatra::Namespace

    get '/' do
      'Hello My Sinatra - Easy and Wide world!'
    end

    get '/hello/:name' do
      "Sinatra приветствует тебя, #{params[:name]}!"
    end

    get '/redirect' do
      redirect to('/hello/World')
    end

    get '/say/*/to/*' do
      params['splat'].to_s  # => ["hello", "world"]
    end

    namespace '/api/v1' do
      get '/*' do
        "I don't know what is the #{params[:splat]}. It's what you typed!"
      end
    end
  end
end


