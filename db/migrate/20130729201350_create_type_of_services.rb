class CreateTypeOfServices < ActiveRecord::Migration
  def change
    create_table :type_of_services do |t|
      t.string :type_name

      t.timestamps
    end
  end
end
