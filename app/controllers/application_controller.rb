class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!
  get "/recipe/new" do
    erb :"/recipes/new"
  end

  post "/recipe" do
    recipe = Recipe.create(name: params[name],ingredients: params[ingredients], cook_time: params[cook_time])
    if recipe
      recipe.save
      redirect "/recipe/#{recipe.id}"
    end 
  end

end
