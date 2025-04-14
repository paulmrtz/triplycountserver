module Mutations
    class CreateExpense < Mutations::BaseMutation
      argument :name, String, required: true
      argument :amount, Float, required: true
      argument :date, Date, required: true
  
      field :expense, Types::ExpenseType, null: false
      field :errors, [String], null: false
  
      def resolve(name:, amount:, date:)
        expense = Expense.new(name: name, amount: amount, date: date)
        if expense.save
          { expense: expense, errors: [] }
        else
          { expense: nil, errors: expense.errors.full_messages }
        end
      end
    end
  end
  