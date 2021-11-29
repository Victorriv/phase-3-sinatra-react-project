class ArtistsController < ApplicationController
    
    get "/artists" do
        artist = Artist.create(name: params[:name], release_year: params[:release_year] , artist_id: params[:artist_id])
        artist.to_json

    end

    get "/artists/:id" do 
        artist = Artist.find(params[:id])
    end
end