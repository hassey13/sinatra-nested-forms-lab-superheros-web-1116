require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
    	erb :team

    end

    post '/teams' do 


    	@team = Team.new
    	@team.name = params[:team][:name]
    	@team.motto = params[:team][:motto]

    	@members = []
    	params[:team][:member].each do |hero|
            m = Member.new
			m.name = hero[:name]
			m.power = hero[:power]
			m.bio = hero[:bio]
    		@members << m
    	end


    	erb :super_hero
    end

end
