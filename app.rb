require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/' do
    @instance_one = TextAnalyzer.new(params[:user_text])
    erb :results
  end


end
