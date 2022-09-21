class CustomersDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :customers_dishes, id: false do |t|
      t.belongs_to :customer
      t.belongs_to :dish
    end
  end
end
