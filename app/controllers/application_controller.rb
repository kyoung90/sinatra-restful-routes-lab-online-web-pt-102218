class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!
  get "/recipe/new" do
    erb :new
  end

  post "/recipe" do
    
  end 

end
