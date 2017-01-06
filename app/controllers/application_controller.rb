require './config/environment'
require './app/models/tweet'
require './app/models/user'

class ApplicationController < Sinatra::Base

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
    end


    get '/tweets' do
        @tweets = Tweet.all
        @users = User.all
        erb :index
    end

    post '/tweets'do
        @tweets = Tweet.create(params)
        str = params[:status]
        parsed = str.scan(/#\w+/).flatten
        parsed.each do |tag|
          @hashtags = Hashtag.create(tag, Tweet.id)

        redirect to '/tweets'
    end

    get '/signup' do
      erb :signup
    end

    post '/signup' do
      @user = User.create(params)
      redirect to '/tweets'
    end

end
