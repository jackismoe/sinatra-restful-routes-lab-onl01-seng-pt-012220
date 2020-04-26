class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # loads new form
  get '/recipes/new' do
    erb :new
  end 

  # loads index page
  get '/recipes' do
    @recipes = Recipe.all
    erb :index
  end

  # loads show page
  get 'recipes/:id' do
    @recipe = Recipe.find_by_id(params[:id])
    erb :show
  end
end
