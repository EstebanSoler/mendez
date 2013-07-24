class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :first_name
      t.string :Last_name
      t.string :image_url

      t.timestamps
    end
  end
end
