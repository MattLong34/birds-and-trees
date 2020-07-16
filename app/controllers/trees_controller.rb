class TreesController < ApplicationController

    # calling the bird class/model
    # R in CRUD
    def index
        @trees = Tree.all

        render json: @trees
    end

    # R in CRUD
    def show
        @tree = Tree.find(params[:id])

        render json: @tree
    end

    # C in CRUD
    def create
        @tree = Tree.create(species: params[:species], age: params[:age], height: params[:height])

        render json: @tree
    end
end
