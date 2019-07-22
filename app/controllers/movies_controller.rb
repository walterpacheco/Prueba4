class MoviesController < ApplicationController

    before_action :find_movie, only: [:show, :edit, :update, :destroy]

    def index
        @movies = Movie.all
    end

    def new
        @movie = Movie.new
    end

    def create
        @movie = Movie.new(movie_params)
        @movie.favorite = false
        @movie.save
        redirect_to movies_path
    end

    def show
        
    end

    def edit
        
    end

    def update
        @movie.update(movie_params)
        redirect_to movies_path
    end

    def destroy
        @movie.delete
        redirect_to movies_path
    end
 

    def list
        @movies = Movie.all
    end

    private

    def movie_params
        params.require(:movie).permit(:name, :year, :favorite)
    end

    def find_movie
        @movie = Movie.find(params[:id])
    end



end
