class CreateStaffs < ActiveRecord::Migration[7.0]
  def change
    create_table :staffs do |t|
      t.string :type # cleaning, cooking, etc
      t.integer :size
      t.timestamps
    end
  end
end
