class CreateBranches < ActiveRecord::Migration[7.0]
  def change
    create_table :branches do |t|
      t.string :speciality
      t.string :address
      t.string :email
      t.string :contact
      t.timestamps
    end
  end
end
