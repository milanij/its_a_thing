class Thing
  include Mongoid::Document
  field :name, type: String
  field :date, type: String
  field :description, type: String
  field :thingness, type: Boolean
end
