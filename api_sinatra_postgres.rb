require 'sequel'
require 'sequel/extensions/seed'
require 'pg'
require 'json'
require 'multi_json'
require 'sinatra'

get '/' do
    "Hi! I am api_sinatra_postgres!\n\n"
end

before do
  content_type 'application/json'  # Для удобного отображения в Postman, в вкладке "Pretty"
end

def collection_to_api(collection)  # Для массива объектов
  MultiJson.dump(collection.map { |s| s.to_api })
end

%w{ controllers models routes }.each { |dir| Dir.glob("./#{ dir }/*.rb", &method(:require)) }

register Routes::Jobs
register Routes::Companies
register Routes::Geeks
register Routes::Applies


