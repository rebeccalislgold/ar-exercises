class Employee < ActiveRecord::Base

    belongs_to :store

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :hourly_rate, presence: true, numericality: {only_integers: true, greater_or_equal_to: 40, less_than_or_equal_to: 200}

end

# create_table :employees do |table|
#     table.references :store
#     table.column :first_name, :string
#     table.column :last_name, :string
#     table.column :hourly_rate, :integer
#     table.timestamps null: false
#   end