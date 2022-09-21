class BranchesCustomers < ActiveRecord::Migration[7.0]
  def change
      create_table :branches_customers, id: false do |t|
      t.belongs_to :branch
      t.belongs_to :customer
    end
  end
end
