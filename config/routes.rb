Rails.application.routes.draw do
  resources :artists do
    resources :songs, only: [:index, :show, :new, :create, :edit]
  end
  resources :songs
end

# artist_songs GET    /artists/:artist_id/songs(.:format)     songs#index
# POST   /artists/:artist_id/songs(.:format)     songs#create
# new_artist_song GET    /artists/:artist_id/songs/new(.:format) songs#new
# artist_song GET    /artists/:artist_id/songs/:id(.:format) songs#show
