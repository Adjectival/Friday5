require("sinatra")
require("sinatra/reloader")
require("./lib/ruby_word_counter")
also_reload("lib/**/*.rb")

get("/") do
  erb(:index)
end

get('/results') do
  @search = params.fetch('search')
  @within = params.fetch('within')
  @times = params.fetch('within').ruby_word_counter(@search,@within)
  erb(:results)

end
