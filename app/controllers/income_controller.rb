class IncomeController < ApplicationController
    before_action :load_income, only: [:destroy] 
    def index
        @incomes = Income.all
    end

    def new
        @income = Income.new
    end

    def create
        @income = current_user.incomes.new(income_params)
        @income.data = Time.now
        if @income.save!
            redirect_to entradas_path, status: :created
        else
            render :new, status: :unprocessable_entity
        end
    end

    def destroy
        @income.delete
    end

    private

    def load_income
        @income = current_user.incomes.find(params[:id])
    end
    def income_params
        params.require(:income).permit(:title, :value, :description, :data)
    end
end
