class ArtistsController < ApplicationController

    def show
        find_artist
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(artist_params)
        redirect_to artist_path(@artist)
    end

    def edit   
        find_artist
    end

    def update  
        find_artist
        @artist.update(artist_params)
        redirect_to artist_path(@artist)
    end

    def find_artist
        @artist = Artist.find_by_id(params[:id])
    end

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end
end
