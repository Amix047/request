require 'sinatra'
require 'json'
require 'net/http'

post '/test' do
  params = JSON.parse(env["rack.input"].read)
  question = params['question']
  id = params['id']
  level = params['level']
  token = params['token']
  puts '=========================='
  puts "PARAMS: #{params}"
  puts "QUESTION=#{question}, ID=#{id}, LEVEL=#{level}."
  puts "TOKEN=#{token}"
end
