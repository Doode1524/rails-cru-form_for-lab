class GenresController < ApplicationController

    def show
        find_genre
    end

    def new
        @genre = Genre.new
    end

    def create
        @genre = Genre.create(genre_params)
        redirect_to genre_path(@genre)
    end

    def edit
        find_genre
    end

    def update
        find_genre
        @genre.update(genre_params)
        redirect_to genre_path(@genre)
    end

    def find_genre
        @genre = Genre.find_by_id(params[:id])
    end

    def genre_params
        params.require(:genre).permit(:name)
    end
end
