require("sinatra")
require("sinatra/reloader")
require("./lib/ruby_word_counter")
also_reload("lib/**/*.rb")

get("/") do
  erb(:index)
end

get('/results') do
  @find = params.fetch('find')
  @within = params.fetch('within')
  @times = params.fetch('within').ruby_word_counter(@find)
  erb(:results)

end
