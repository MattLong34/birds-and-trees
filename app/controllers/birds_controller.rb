class BirdsController < ApplicationController

    # calling the bird class/model
    # R in CRUD
    def index
        @birds = Bird.all

        # added [:tree] when we made the 1 to M relationship
        render json: @birds, include: [:tree]
    end

    # R in CRUD
    def show
        @bird = Bird.find(params[:id])

        # added [:tree] when we made the 1 to M relationship
        render json: @bird, include: [:tree]
    end

    # C in CRUD
    def create
        # added [:tree_id] when we made the 1 to M relationship
        @bird = Bird.create(species: params[:species], age: params[:age], color: params[:color], tree_id: params[:tree_id])

        render json: @bird
    end
end
