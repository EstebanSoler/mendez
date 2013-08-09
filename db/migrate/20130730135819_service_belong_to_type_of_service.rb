class ServiceBelongToTypeOfService < ActiveRecord::Migration
  def change
    change_table :services do |t|
      t.belongs_to :type_of_service
    end
  end
end
