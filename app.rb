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

    def player_total_salary(teamname, player_name)
      players = []
      salary_scrape = get_team(teamname[0])
      player_name.each do |each_player|
        salary_scrape.each do |data_row|
          if data_row['Player'] == each_player
            players << one_total(data_row, each_player)
          end
        end
      end
      players
    end

    def parse_money(money)
      data = money.gsub(/[$,]/, '$' => '', ',' => '')
      data.to_i
    end

    def back_to_money(data)
      money = "$#{data}"
      money
    end
