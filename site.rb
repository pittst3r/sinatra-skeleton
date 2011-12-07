require 'sinatra'
require 'haml'
require 'sass'
require 'rdiscount'
require './helpers_errors'

get '/stylesheets/*.css' do |f|
  sass ('stylesheets/sass/' + f).to_sym
end

get '/' do
  @content = markdown_to_html("home")
  haml :index
end

# Example get route
get '/:page' do |page|
  @content = markdown_to_html(page)
  haml :index
end

mime_type '.woff', "application/x-woff"
mime_type '.ttf', "application/x-font-ttf"
mime_type '.eot', "application/vnd.ms-fontobject"