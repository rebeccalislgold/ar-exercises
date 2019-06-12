class Store < ActiveRecord::Base

    has_many :employees

    validates :name, presence: true, length: {minimum: 3}
    validates :annual_revenue, presence: true, numericality: {only_integers: true, greater_or_equal_to: 0}

    # not sure because error added to men's apparel attribute only
    def carries_apparel?
        if !mens_apparel.present? && !womens_apparel.present?
            errors.add(:mens_apparel, "store must carry apparel!")
        end
    end

end


#   create_table :stores do |t|
#     t.column :name, :string
#     t.column :annual_revenue, :integer
#     t.column :mens_apparel, :boolean
#     t.column :womens_apparel, :boolean
#     t.timestamps null: false
#   end