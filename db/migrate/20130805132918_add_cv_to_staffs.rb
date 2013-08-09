class AddCvToStaffs < ActiveRecord::Migration
  def change
    add_column :staffs, :cv, :text
  end
end
