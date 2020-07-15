class BirdsController < ApplicationController

    # calling the bird class/model
    # read
    def index
        @birds = Bird.all

        render json: @birds
    end

    # read
    def show
        @bird = Bird.find(params[:id])

        render json: @bird
    end

    # C in CRUD
    def create
        @bird = Bird.create(species: params[:species], age: params[:age], color: params[:color])

        render json: @bird
    end
end
