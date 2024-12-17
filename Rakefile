# Подключаем необходимые библиотеки
require 'sinatra'
require './lib/task/db'

# Пространство имен для задач базы данных
namespace :db do
  # Задача environment для подготовки переменных окружения и подключения
  task :environment do
    # Подключаем Sequel для работы с базой данных
    require 'sequel'

    # Устанавливаем переменную DATABASE_URL, если она еще не установлена
    ENV['DATABASE_URL'] ||= 'postgres://sinatra_admin:123@localhost/sinatra_seq'

    # Устанавливаем переменную RACK_ENV, если она еще не установлена
    ENV['RACK_ENV'] ||= 'development'

    # В зависимости от текущей среды, устанавливаем название базы данных
    ENV['DATABASE'] = 'sinatra_seq_dev' if ENV['RACK_ENV'] == 'development'
    ENV['DATABASE'] = 'sinatra_seq_test' if ENV['RACK_ENV'] == 'test'
    ENV['DATABASE'] = 'sinatra_seq_prod' if ENV['RACK_ENV'] == 'production'
  end

  # Здесь мы можем определить другие задачи, например для миграций, сброса и т.д.
end
