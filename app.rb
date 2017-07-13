require 'bundler'
Bundler.require

get '/Chicago/json' do
  response['Access-Control-Allow-Origin'] = '*'
  content_type :json
  {name: "Chicago", top_attractions:['Millennium Park', 'Wrigley Field', 'The Art Institute']}.to_json
end

get '/Denver/json' do
  response['Access-Control-Allow-Origin'] = '*'
  content_type :json
  {name: "Denver", top_attractions:['Botanic Gardens', 'Elitch Gardens', 'The Coors Factory']}.to_json
end

get '/Seattle/json' do
  response['Access-Control-Allow-Origin'] = '*'
  content_type :json
  {name: "Seattle", top_attractions:['The Space Needle', 'Lake Union', 'Museum of Pop Culture']}.to_json
end

get '/Nashville/json' do
  response['Access-Control-Allow-Origin'] = '*'
  content_type :json
  {name: "Nashville", top_attractions:['The Grand Ole Opry', 'Centennial Park', 'Country Music Hall of Fame']}.to_json
end

get '/Miami/json' do
  response['Access-Control-Allow-Origin'] = '*'
  content_type :json
  {name: "Miami", top_attractions:['The Design District', 'Miami Riverwalk', 'South Pointe Park']}.to_json
end




get '/Chicago/view' do
  @city = {name: "Chicago", top_attractions:['Millennium Park', 'Wrigley Field', 'The Art Institute']}
  erb :city
end

get '/Denver/view' do
  @city = {name: "Denver", top_attractions:['Botanic Gardens', 'Elitch Gardens', 'The Coors Factory']}
  erb :city
end

get '/Seattle/view' do
  @city = {name: "Seattle", top_attractions:['The Space Needle', 'Lake Union', 'Museum of Pop Culture']}
  erb :city
end

get '/Nashville/view' do
  @city = {name: "Nashville", top_attractions:['The Grand Ole Opry', 'Centennial Park', 'Country Music Hall of Fame']}
  erb :city
end

get '/Miami/view' do
  @city = {name: "Miami", top_attractions:['The Design District', 'Miami Riverwalk', 'South Pointe Park']}
  erb :city
end
