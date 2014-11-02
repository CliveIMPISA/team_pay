require 'sinatra/base'
require 'sinatra'
require 'nbasalaryscrape'
require 'json'

# nbasalaryscrape service
class TeamPayApp < Sinatra::Base
  helpers do
    def get_team(teamname)
      var = SalaryScraper::BasketballReference.new
      var.to_array_of_hashes(teamname.upcase)
    end
  end
  get '/api/v1/:teamname.json' do
    content_type :json
    get_team(params[:teamname]).to_json
  end
