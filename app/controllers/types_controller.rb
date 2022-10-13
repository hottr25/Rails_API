class TypesController < ApplicationController
    def index 
        # @types = Types.all

        # render json: @types 
    end

    #GET
    def show
        @types = Types.all
        render json: @type
    end

    #POST
    def create 
        @type = Type.new(type_params)

        if @type.save 
            render json: @type, status: :created
        else
            render json: {errors: @type.errors, message: 'Type not saved'}
        end
    end

    #PATCH
    def update 
        @type = Type.find_by params[:name]
        render json: @type
    end

    #DELETE
    def destroy
        @type = Type.find_by(params[:name])
        if @type.present?
            @type.destroy
        end
    end
 
    def set_type
        @type = Type.find(params[:id])
    end

    def type_params
        params.require(:type).permit(:name)
    end
end

