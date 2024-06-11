class IncomeController < ApplicationController
    def index
        @incomes = Income.all
    end

    def new
        @income = Income.new
    end

    def create
        @income = current_user.incomes.create(income_params)
        if @income.save!
            redirect_to entradas_path, status: :created
        else
            render :new, status: :unprocessable_entity
        end
    end

    private
    def income_params
        params.require(:income).permit(:title, :value, :description)
    end
end
