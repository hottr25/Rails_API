module API 
    class TermController < ApplicationController
        def index 
            @terms = Terms.all

            render json: @terms 
        end

        #GET
        def show
            render json: @term
        end

        #POST
        def create 
            @term = Term.new(term_params)
            
            if @term.save 
                render json: {@term, status: :created, location: @term}
            else
                render json: {@term.errors, message: 'Term not saved', data:term.errors},status: :unprocessable_entity
            end
        end

        #PATCH
        def update 
            if @term.update(term_params)
                render json: @term
            else
                render json: {@term.errors, message: 'Term not updated', data:term.errors},status: :unprocessable_entity
            end
        end

        #DELETE
        def destroy
            @term.destroy
        end

        private 
            def set_term
                @term = Term.find(params[:id])
            end

            def term_params
                params.require(:term).permit(:name, :what, :why, :how, :example, :type_id)
            end
        end
    end 
end