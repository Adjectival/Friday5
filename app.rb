require("sinatra")
require("sinatra/reloader")
require("./lib/ruby_word_counter")
also_reload("lib/**/*.rb")

get("/") do
  erb(:index)
end

get('/output') do
  @output = params.fetch('input').ruby_word_counter
  erb(:output)
end
