require 'sinatra'
require 'pig_latin'
require 'pry-byebug'
require 'json'
# uncomment the next line if you are using vagrant
# set :bind, '0.0.0.0'

get '/' do
  erb :index
end

post '/' do
  # this is where we grab the value out of the
  # params hash. this was sent on line 43 of our
  # html document.
  word = params["userword"]
  # remember that the return value of this block
  # is what is sent back to the browser. in this
  # case it is only the converted word. this is
  # what is bound to the 'result' variable in our
  # ajax request which is in turn appended to our
  # #translation div.
  PigLatin::ConvertWord.convert(word)
end
