module Types
    class ExpenseType < Types::BaseObject
      field :id, ID, null: false
      field :name, String, null: false
      field :amount, Float, null: false
    end
  end
  