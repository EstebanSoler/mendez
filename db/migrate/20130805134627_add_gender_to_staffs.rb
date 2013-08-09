class AddGenderToStaffs < ActiveRecord::Migration
  def change
    add_column :staffs, :gender, :string
  end
end
