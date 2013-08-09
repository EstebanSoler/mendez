class RemaneColumnStaff < ActiveRecord::Migration
def change
    rename_column :staffs, :Last_name, :last_name
  end
end
