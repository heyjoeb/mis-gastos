class ExpensesController < ApplicationController
	before_action :set_expense, only: [:show, :edit, :update, :destroy]

	def index
		@expenses = Expense.all
	end
	def new
		@expense = Expense.new
	end

	def create
		@expense = Expense.new(expense_params)
		respond_to do |format|
	    if @expense.save
	        format.html { redirect_to @expense, notice: 'Expense was successfully created.' }
	      else
	        format.html { render :new }
	      end
	    end
	end

	def edit
  	end

	def update
		respond_to do |format|
	    if @expense.update(expense_params)
	        format.html { redirect_to @expense, notice: 'Expense was successfully updated.' }
	      else
	        format.html { render :edit }
	      end
	    end
			
	end

	def destroy
		element = params[:id]
		@expense = Expense.find(element)
		@expense.destroy
	    respond_to do |format|
	      format.html { redirect_to expenses_url, notice: 'Expense was successfully destroyed.' }
	    end
	end

	def show
		element = params[:id]
		@expense = Expense.find(element)
	end

	private
	def set_expense
      @expense = Expense.find(params[:id])
    end


	def expense_params
      params.require(:expense).permit(:category_id, :fecha, :concept, :amount, :prueba)
    end

	
end
