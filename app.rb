require("sinatra")
require("sinatra/reloader")
require("./lib/ruby_word_counter")
also_reload("lib/**/*.rb")

get("/") do
  erb(:index)
end

get('/search') do
  @search = params.fetch('search').ruby_word_counter()
  erb(:search)
end
