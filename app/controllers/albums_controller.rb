require 'pry'

class AlbumsController < ApplicationController
   #read
    get "/albums" do
        albums = Album.all
        albums.to_json
    end
 #read
    get "/albums/:id" do 
        album = Album.find(params[:id])
        album.to_json
    end

    #post
    post "/albums" do 
        album = Album.create(name: params[:name], release_year: params[:release_year] , artist_id: params[:artist_id])
        album.to_json
    end

    #delete
    delete "/albums/:id" do

        album = Album.find(params[:id])
        album.destroy
        album.to_json

    end
end