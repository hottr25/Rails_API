class TermsController < ApplicationController
    def index 
        # @terms = Terms.all

        # render json: @terms 
    end

    #GET
    def show
        @terms = Terms.all
        render json: @term
    end

    #POST
    def create 
        @term = Term.new(term_params)
        
        
        if @term.save
            render json: @term, status: :created
        else
            render json: {erros: @term.errors, message: 'Term not saved'}
        end
    end

    #PATCH
    def update 
        @term = Term.find_by params[term_params]
        render json: @term
    end

    #DELETE
    def destroy
        @term = Term.find_by(params[term_params])
        if @term.present?
            @term.destroy
        end
        # @term.destroy
    end
    
    def set_term
        @term = Term.find(params[:id])
    end

    def term_params
        params.require(:term).permit(:name, :what, :why, :how, :example, :type_id)
    end
end

