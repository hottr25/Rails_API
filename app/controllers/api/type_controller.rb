module API 
    class TypesController < ApplicationController
        def index 
            @types = Types.all

            render json: @types 
        end

        #GET
        def show
            render json: @type
        end

        #POST
        def create 
            type = Type.new(type_params)

            if @type.save 
                render json: {@type, status: :created, location: @type}
            else
                render json: {@type.errors, message: 'Type not saved', data:type.errors},status: :unprocessable_entity
            end
        end

        #PATCH
        def update 
            if @type.update(type_params)
                render json: @type
            else
                render json: {@type.errors, message: 'Type not updated', data:type.errors},status: :unprocessable_entity
            end
        end

        #DELETE
        def destroy
            @type.destroy
        end

        private 
            def set_type
                @type = Type.find(params[:id])
            end

            def type_params
                params.require(:type).permit(:name)
            end
        end
    end 
end